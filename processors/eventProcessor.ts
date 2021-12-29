import * as fs from 'fs/promises';
import { FactorioApiJson } from '../definitions/types';
import { formatNameAndDescr, formatTypedNameAndDescr } from '../utils/formatters';
import { sortByOrder } from '../utils/sortByOrder';

export const processEvents = async (folder: string, factorioApi: FactorioApiJson) => {
  const eventsFile = await fs.open(`${folder}/events.lua`, 'w');

  for (const event of factorioApi.events.sort(sortByOrder)) {
    await eventsFile.write(`---@class ${formatNameAndDescr(event.name, event.description)}\n`);
    for (const parameter of event.data) {
      await eventsFile.write(`---@field ${formatTypedNameAndDescr(parameter.name, parameter.type, parameter.description)}\n`);
    }
    await eventsFile.write('\n');
  }

  await eventsFile.close();
};
