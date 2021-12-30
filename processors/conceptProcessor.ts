import * as fs from 'fs/promises';
import { FactorioApiJson } from '../definitions/types';
import { formatTypedNameAndDescr } from '../utils/formatters';
import { sortByOrder } from '../utils/sortByOrder';
import { LazyType } from './lazyProcessor';

export const processConcepts = async (folder: string, factorioApi: FactorioApiJson, lazyTypes: LazyType[]) => {
  const classesFile = await fs.open(`${folder}/concepts.d.lua`, 'w');

  for (const concept of factorioApi.concepts.sort(sortByOrder)) {
    await classesFile.write(`---@alias ${formatTypedNameAndDescr(concept.name, concept.category, concept.description, lazyTypes)}\n`);
    await classesFile.write('\n');
  }

  await classesFile.close();
};
