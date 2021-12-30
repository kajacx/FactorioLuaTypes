import * as fs from 'fs/promises';

export type LazyType = {
  type: string,
  stringified: string,
};

export const processLazy = async (folder: string, lazyTypes: LazyType[]) => {
  const lazyFile = await fs.open(`${folder}/lazy.d.lua`, 'w');

  for (const lazy of lazyTypes) {
    await lazyFile.write(`---@class ${lazy.stringified} \`LuaLazyLoadedValue\` for type \`${lazy.type}\`.\n`);
    await lazyFile.write('---@field valid boolean Is this object valid?\n');
    await lazyFile.write('---@field object_name string The class name of this object.\n');
    await lazyFile.write(`---@field get fun(): ${lazy.type} Gets the value of this lazy loaded value.\n`);
    await lazyFile.write('---@field help fun(): string All methods and properties that this object supports.\n');
  }

  await lazyFile.close();
};
