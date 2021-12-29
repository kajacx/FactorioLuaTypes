import { Type } from "../definitions/types";

export const formatNameAndDescr = (name: string, descr: string) =>
  `${name} ${descr.replace(/\s+/g, ' ')}`.trim();

export const formatTypedNameAndDescr = (name: string, type: Type, descr: string) =>
  `${name} ${type} ${descr.replace(/\s+/g, ' ')}`.trim();
