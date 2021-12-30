import * as fs from 'fs/promises';
import { FactorioApiJson, Method } from '../definitions/types';
import { formatNameAndDescr, formatTypedNameAndDescr } from '../utils/formatters';
import { sortByOrder } from '../utils/sortByOrder';

const methodType = (method: Method) => {
  const args = method.parameters.map(param => `${param.name}: ${param.type}`).join(', ');
  const returnType = method.return_type ? `: ${method.return_type}` : '';
  return `fun(${args})${returnType}`;
}

export const processClasses = async (folder: string, factorioApi: FactorioApiJson) => {
  const classesFile = await fs.open(`${folder}/classes.d.lua`, 'w');

  for (const luaClass of factorioApi.classes.sort(sortByOrder)) {
    const baseClasses = luaClass.base_classes?.length ? ` : ${luaClass.base_classes.join(', ')}` : '';
    await classesFile.write(`---@class ${formatNameAndDescr(luaClass.name + baseClasses, luaClass.description)}\n`);
    for (const attribute of luaClass.attributes.sort(sortByOrder)) {
      await classesFile.write(`---@field ${formatTypedNameAndDescr(attribute.name, attribute.type, attribute.description)}\n`);
    }
    for (const method of luaClass.methods.sort(sortByOrder)) {
      await classesFile.write(`---@field ${formatTypedNameAndDescr(method.name, methodType(method), method.description)}\n`);
    }
    await classesFile.write('\n');
  }

  await classesFile.close();
};
