import * as fs from 'fs/promises';
import { aliases } from '../definitions/additionalTypes';

export const processAliases = async (folder: string) => {
  const classesFile = await fs.open(`${folder}/aliases.d.lua`, 'w');

  for (const alias of aliases) {
    await classesFile.write(`---@alias ${alias.name} ${alias.targetType} ${alias.description}\n`);
    await classesFile.write('\n');
  }

  await classesFile.close();
};
