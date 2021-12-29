import * as fs from 'fs/promises';
import { aliases } from '../definitions/additionalTypes';
import { FactorioApiJson } from '../definitions/types';
import { formatTypedNameAndDescr } from '../utils/formatters';

export const processAliases = async (folder: string, factorioApi: FactorioApiJson) => {
  const classesFile = await fs.open(`${folder}/aliases.d.lua`, 'w');

  for (const alias of aliases) {
    await classesFile.write(`---@alias ${formatTypedNameAndDescr(alias.name, alias.targetType, alias.description)}\n`);
    await classesFile.write('\n');
  }

  await classesFile.close();
};
