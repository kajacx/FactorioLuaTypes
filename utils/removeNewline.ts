import * as fs from 'fs/promises';

export const removeTrailingNewlineAndClose = async (file: fs.FileHandle) => {
  const stats = await file.stat();
  await file.truncate(stats.size - 1);
  await file.close();
}
