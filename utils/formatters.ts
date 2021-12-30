import { Type } from '../definitions/types';
import { LazyType } from '../processors/lazyProcessor';
import { parseType } from './typeParsers';

export const formatNameAndDescr = (name: string, descr: string) =>
  `${name} ${descr.replace(/\s+/g, ' ')}`.trim();

export const formatTypedNameAndDescr = (name: string, type: Type, descr: string, lazyTypes: LazyType[]) =>
  `${name} ${parseType(type, lazyTypes)} ${descr.replace(/\s+/g, ' ')}`.trim();
