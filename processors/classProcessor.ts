import * as fs from 'fs/promises';
import { FactorioApiJson } from '../definitions/types';
import { formatNameAndDescr, formatTypedNameAndDescr } from '../utils/formatters';
import { removeTrailingNewlineAndClose } from '../utils/removeNewline';
import { sortByOrder } from '../utils/sortByOrder';
import { parseMethod } from '../utils/typeParsers';
import { LazyType } from './lazyProcessor';

export const processClasses = async (folder: string, factorioApi: FactorioApiJson, lazyTypes: LazyType[]) => {
  const classesFile = await fs.open(`${folder}/classes.d.lua`, 'w');

  for (const luaClass of factorioApi.classes.sort(sortByOrder)) {
    const baseClasses = luaClass.base_classes?.length ? ` : ${luaClass.base_classes.join(', ')}` : '';
    await classesFile.write(`---@class ${formatNameAndDescr(luaClass.name + baseClasses, luaClass.description)}\n`);
    for (const attribute of luaClass.attributes.sort(sortByOrder)) {
      await classesFile.write(`---@field ${formatTypedNameAndDescr(attribute.name, attribute.type, attribute.description, lazyTypes)}\n`);
    }
    for (const method of luaClass.methods.sort(sortByOrder)) {
      await classesFile.write(`---@field ${formatTypedNameAndDescr(method.name, parseMethod(method, lazyTypes), method.description, lazyTypes)}\n`);
    }
    await classesFile.write('\n');
  }

  await removeTrailingNewlineAndClose(classesFile);
};
