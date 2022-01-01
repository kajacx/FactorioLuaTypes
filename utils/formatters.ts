import { Type } from '../definitions/types';
import { LazyType } from '../processors/lazyProcessor';
import { parseType } from './typeParsers';

export const formatNameAndDescr = (name: string, descr: string) =>
  `${name} ${descr.replace(/\s+/g, ' ')}`.trim();

export const formatTypedNameAndDescr = (name: string, type: Type, descr: string, lazyTypes: LazyType[]) =>
  `${name} ${parseType(type, lazyTypes)} ${descr.replace(/\s+/g, ' ')}`.trim();

export const formatNameUnderscores = (name: string) => {
  // TODO: replace camelCase with underscore, like this: camel_case
  return name.replace(/[^A-Za-z]+/g, '_').replace(/^_|_$/, '').toLowerCase();
};

const ucFirst = (text: string) => text.slice(0, 1).toUpperCase() + text.slice(1);

const lcFirst = (text: string) => text.slice(0, 1).toLowerCase() + text.slice(1);

export const formatNameCamelCase = (name: string, upperCase: boolean) => {
  const [firstMatch, ...restMatches] = name.match(/[A-Za-z]+/g) || [name];
  const firstWord = upperCase ? ucFirst(firstMatch) : lcFirst(firstMatch);
  return firstWord + restMatches.map(ucFirst).join('');
};
