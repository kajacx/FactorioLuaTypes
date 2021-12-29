import * as fs from 'fs/promises';
import { FactorioApiJson } from "../definitions/types";
import { formatTypedNameAndDescr } from '../utils/formatters';
import { sortByOrder } from '../utils/sortByOrder';

export const processConcepts = async (folder: string, factorioApi: FactorioApiJson) => {
  const classesFile = await fs.open(`${folder}/concepts.lua`, 'w');

  for (const concept of factorioApi.concepts.sort(sortByOrder)) {
    await classesFile.write(`---@alias ${formatTypedNameAndDescr(concept.name, concept.category, concept.description)}\n`);
    await classesFile.write('\n');
  }

  await classesFile.close();
};
