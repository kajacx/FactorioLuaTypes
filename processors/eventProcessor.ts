import * as fs from 'fs/promises';
import { FactorioApiJson } from '../definitions/types';
import { formatNameAndDescr, formatTypedNameAndDescr } from '../utils/formatters';
import { removeTrailingNewlineAndClose } from '../utils/removeNewline';
import { sortByOrder } from '../utils/sortByOrder';
import { LazyType } from './lazyProcessor';

export const processEvents = async (folder: string, factorioApi: FactorioApiJson, lazyTypes: LazyType[]) => {
  const eventsFile = await fs.open(`${folder}/events.d.lua`, 'w');

  for (const event of factorioApi.events.sort(sortByOrder)) {
    await eventsFile.write(`---@class ${formatNameAndDescr(event.name, event.description)}\n`);
    for (const parameter of event.data) {
      await eventsFile.write(`---@field ${formatTypedNameAndDescr(parameter.name, parameter.type, parameter.description, lazyTypes)}\n`);
    }
    await eventsFile.write('\n');
  }

  await removeTrailingNewlineAndClose(eventsFile);
};
