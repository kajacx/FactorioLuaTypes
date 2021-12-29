import * as fs from 'fs/promises';
import { Define, FactorioApiJson, Type } from "./types";

const factorioApi: FactorioApiJson = require('./runtime-api-1.1.50');

const folder = 'output';

// run with: tsc main.ts && node main.js

const getNameAndDescr = (name: string, descr?: string) =>
  `${name} ${descr?.replace(/\s+/g, ' ') || ''}`.trim();

const getNameTypeAndDescr = (name: string, type: Type, descr?: string) =>
    `${name} ${type} ${descr?.replace(/\s+/g, ' ') || ''}`.trim();

const sortByOrder = (a: { order: number }, b: { order: number }) => a.order - b.order;

const processClasses = async () => {
  const classesFile = await fs.open(`${folder}/classes.lua`, 'w');

  for (const luaClass of factorioApi.classes.sort(sortByOrder)) {
    await classesFile.write(`---@class ${getNameAndDescr(luaClass.name, luaClass.description)}\n`);
    for (const attribute of luaClass.attributes.sort(sortByOrder)) {
      await classesFile.write(`---@field ${getNameTypeAndDescr(attribute.name, attribute.type, attribute.description)}\n`);
    }
    await classesFile.write('\n');
  }

  await classesFile.close();
};

const processConcepts = async () => {
  const classesFile = await fs.open(`${folder}/concepts.lua`, 'w');

  for (const concept of factorioApi.concepts.sort(sortByOrder)) {
    await classesFile.write(`---@alias ${getNameTypeAndDescr(concept.name, concept.category, concept.description)}\n`);
    await classesFile.write('\n');
  }

  await classesFile.close();
};

const processEvents = async () => {
  const eventsFile = await fs.open(`${folder}/events.lua`, 'w');

  for (const event of factorioApi.events.sort(sortByOrder)) {
    console.log("Event", event.name, event);
    await eventsFile.write(`---@class ${getNameAndDescr(event.name, event.description)}\n`);
    for (const parameter of event.data) {
      await eventsFile.write(`---@field ${getNameTypeAndDescr(parameter.name, parameter.type, parameter.description)}\n`);
    }
    await eventsFile.write('\n');
  }

  await eventsFile.close();
};


const processDefine = async(definesFile: fs.FileHandle, name: string, description: string, values: Define[]) => {
  await definesFile.write(`---@class ${getNameTypeAndDescr(name, description)}\n`);

  for (const define of values.sort(sortByOrder)) {
    await definesFile.write(`---@field ${getNameTypeAndDescr(define.name, define.name, define.description)}\n`);
  }
  await definesFile.write('\n');

  for (const define of values.sort(sortByOrder)) {
    if (define.values?.length) {
      await definesFile.write(`---@class ${getNameAndDescr(define.name, define.description)}\n`);
      for (const defineValue of define.values || []) {
        await definesFile.write(`---@field ${getNameTypeAndDescr(defineValue.name, 'number', defineValue.description)}\n`);
      }
      await definesFile.write('\n');
    }
    if (define.subkeys?.length) {
      await processDefine(definesFile, define.name, define.description, define.subkeys);
    }
  }
};

const processDefines = async () => {
  const definesFile = await fs.open(`${folder}/defines.lua`, 'w');

  await processDefine(definesFile, 'Defines', 'This is the class of the `defines` object that will exist at runtime.', factorioApi.defines)

  await definesFile.close();
};

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
    processClasses(),
    processConcepts(),
    processEvents(),
    processDefines(),
  ]);
}
work();
