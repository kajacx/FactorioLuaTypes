import * as fs from 'fs/promises';
import { FactorioApiJson } from '../definitions/types';
import { formatNameAndDescr, formatNameCamelCase, formatTypedNameAndDescr } from '../utils/formatters';
import { removeTrailingNewlineAndClose } from '../utils/removeNewline';
import { sortByOrder } from '../utils/sortByOrder';
import { LazyType } from './lazyProcessor';

export const processConcepts = async (folder: string, factorioApi: FactorioApiJson, lazyTypes: LazyType[]) => {
  const conceptsFile = await fs.open(`${folder}/concepts.d.lua`, 'w');

  for (const concept of factorioApi.concepts.sort(sortByOrder)) {
    switch (concept.category) {
      case 'concept':
        // TODO: figure out how to generate concept types
        await conceptsFile.write(`---@alias ${formatTypedNameAndDescr(concept.name, 'any', concept.description, lazyTypes)}\n`);
        break;
      case 'enum':
        const options = concept.options.sort(sortByOrder).map(option => 
          `---${formatNameAndDescr(`\`${option.name}\``, option.description)}\n`
        ).join('---\n');
        await conceptsFile.write(options);
        await conceptsFile.write(`---@alias ${formatTypedNameAndDescr(concept.name, 'string', concept.description, lazyTypes)}\n`);
        break;
      case 'filter':
        if (concept.variant_parameter_groups) {
          const variantNames = [];
          for (const variant of concept.variant_parameter_groups.sort(sortByOrder)) {
            const variantName = formatNameCamelCase(`${concept.name}_${variant.name}`, true);
            variantNames.push(variantName);
            await conceptsFile.write(`---@class ${formatNameAndDescr(variantName, variant.description)}\n`);
            for (const param of variant.parameters.sort(sortByOrder)) {
              await conceptsFile.write(`---@field ${formatTypedNameAndDescr(param.name, param.type, param.description, lazyTypes)}\n`);
            }
            await conceptsFile.write('\n');
          }
          await conceptsFile.write(`---@alias ${formatTypedNameAndDescr(concept.name, variantNames.join(' | '), concept.description, lazyTypes)}\n`);
        } else {
          console.warn("Unknown filter concept:", concept);
        }
        break;
      case 'flag':
        await conceptsFile.write(`---@class ${formatNameAndDescr(concept.name, concept.description)}\n`);
        for (const option of concept.options.sort(sortByOrder)) {
          await conceptsFile.write(`---@field ${formatTypedNameAndDescr(option.name, 'boolean', option.description, lazyTypes)}\n`);
        }
        break;
    }
    await conceptsFile.write('\n');
  }

  await removeTrailingNewlineAndClose(conceptsFile);
};
