import * as fs from 'fs/promises';
import { FactorioApiJson } from '../definitions/types';
import { formatNameAndDescr, formatTypedNameAndDescr } from '../utils/formatters';
import { sortByOrder } from '../utils/sortByOrder';

export const processClasses = async (folder: string, factorioApi: FactorioApiJson) => {
  const classesFile = await fs.open(`${folder}/classes.d.lua`, 'w');

  for (const luaClass of factorioApi.classes.sort(sortByOrder)) {
    await classesFile.write(`---@class ${formatNameAndDescr(luaClass.name, luaClass.description)}\n`);
    for (const attribute of luaClass.attributes.sort(sortByOrder)) {
    await classesFile.write(`---@field ${formatTypedNameAndDescr(attribute.name, attribute.type, attribute.description)}\n`);
    }
    await classesFile.write('\n');
  }

  await classesFile.close();
};
