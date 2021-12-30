import * as fs from 'fs/promises';
import { aliases } from '../definitions/additionalTypes';
import { removeTrailingNewlineAndClose } from '../utils/removeNewline';

export const processAliases = async (folder: string) => {
  const aliasesFile = await fs.open(`${folder}/aliases.d.lua`, 'w');

  for (const alias of aliases) {
    await aliasesFile.write(`---@alias ${alias.name} ${alias.targetType} ${alias.description}\n`);
    await aliasesFile.write('\n');
  }

  await removeTrailingNewlineAndClose(aliasesFile);
};
