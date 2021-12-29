import * as fs from 'fs/promises';
import { FactorioApiJson } from './definitions/types';
import { processAliases } from './processors/aliasProcessor';
import { processClasses } from './processors/classProcessor';
import { processConcepts } from './processors/conceptProcessor';
import { processDefines } from './processors/definesProcesor';
import { processEvents } from './processors/eventProcessor';

const factorioApi: FactorioApiJson = require('./definitions/runtime-api-1.1.50');

const folder = 'output';

// run with: tsc main.ts && node main.js

const work = async () => {
  // create output dir if it doesn't exist
  try {
    await fs.mkdir(folder);
  } catch (ex) {
    if (ex.code !== 'EEXIST') {
      console.error(ex);
      return;
    }
  }

  // process all types in "parallel"
  await Promise.all([
    processClasses(folder, factorioApi),
    processConcepts(folder, factorioApi),
    processEvents(folder, factorioApi),
    processDefines(folder, factorioApi),
    processAliases(folder, factorioApi),
  ]);
}
work();
