import * as fs from 'fs/promises';
import { Define, FactorioApiJson } from '../definitions/types';
import { formatNameAndDescr, formatTypedNameAndDescr } from '../utils/formatters';
import { sortByOrder } from '../utils/sortByOrder';

const processDefine = async(definesFile: fs.FileHandle, name: string, description: string, values: Define[]) => {
  await definesFile.write(`---@class ${formatNameAndDescr(name, description)}\n`);

  for (const define of values.sort(sortByOrder)) {
    await definesFile.write(`---@field ${formatTypedNameAndDescr(define.name, define.name, define.description)}\n`);
  }
  await definesFile.write('\n');

  for (const define of values.sort(sortByOrder)) {
    if (define.values?.length) {
      await definesFile.write(`---@class ${formatNameAndDescr(define.name, define.description)}\n`);
      const valueType = `${define.name}_enum`;
      for (const defineValue of define.values) {
        await definesFile.write(`---@field ${formatTypedNameAndDescr(defineValue.name, valueType, defineValue.description)}\n`);
      }
      await definesFile.write('\n');

      await definesFile.write(`---@class ${formatNameAndDescr(valueType, `Enum value type for ${define.name}`)}\n\n`);
    }
    if (define.subkeys?.length) {
      await processDefine(definesFile, define.name, define.description, define.subkeys);
    }
  }
};

export const processDefines = async (folder: string, factorioApi: FactorioApiJson) => {
  const definesFile = await fs.open(`${folder}/defines.d.lua`, 'w');

  await processDefine(definesFile, 'Defines', 'This is the class of the `defines` object that will exist at runtime.', factorioApi.defines)

  await definesFile.close();
};
