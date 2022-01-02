import * as fs from 'fs/promises';
import { Define, FactorioApiJson } from '../definitions/types';
import { formatNameAndDescr, formatNameCamelCase, formatTypedNameAndDescr } from '../utils/formatters';
import { removeTrailingNewlineAndClose } from '../utils/removeNewline';
import { sortByOrder } from '../utils/sortByOrder';
import { LazyType } from './lazyProcessor';

const processDefine = async(definesFile: fs.FileHandle, name: string, description: string, values: Define[], lazyTypes: LazyType[], path: string) => {
  await definesFile.write(`---@class ${formatNameAndDescr(name, description)}\n`);

  for (const define of values.sort(sortByOrder)) {
    await definesFile.write(`---@field ${formatTypedNameAndDescr(define.name, define.name, define.description, lazyTypes)}\n`);
  }
  await definesFile.write('\n');

  for (const define of values.sort(sortByOrder)) {
    const appendedPath = `${path}_${define.name}`;
    const name = formatNameCamelCase(appendedPath, true);
    if (define.values?.length) {
      await definesFile.write(`---@class ${formatNameAndDescr(define.name, define.description)}\n`);
      for (const defineValue of define.values) {
        await definesFile.write(`---@field ${formatTypedNameAndDescr(defineValue.name, name, defineValue.description, lazyTypes)}\n`);
      }
      await definesFile.write('\n');

      await definesFile.write(`---@class ${formatNameAndDescr(name, `Enum value type for ${define.name}`)}\n\n`);
    }
    if (define.subkeys?.length) {
      await processDefine(definesFile, define.name, define.description, define.subkeys, lazyTypes, appendedPath);
    }
  }
};

export const processDefines = async (folder: string, factorioApi: FactorioApiJson, lazyTypes: LazyType[]) => {
  const definesFile = await fs.open(`${folder}/defines.d.lua`, 'w');

  const descr = 'This is the class of the `defines` object that will exist at runtime.';
  await processDefine(definesFile, 'Defines', descr, factorioApi.defines, lazyTypes, 'defines');

  await removeTrailingNewlineAndClose(definesFile);
};
