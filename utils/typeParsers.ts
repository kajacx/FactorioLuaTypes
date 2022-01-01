import { Method, Type } from '../definitions/types';
import { LazyType } from '../processors/lazyProcessor';
import { formatNameUnderscores } from './formatters';

export const parseType = (type: Type, lazyTypes: LazyType[]): string => {
  if (typeof type === 'string') {
    if (type.match(/^defines\./)) {
      return formatNameUnderscores(type);
    }
    return type;
  }
  switch(type.complex_type) {
    case 'LuaCustomTable':
    case 'dictionary':
      return `table<${parseType(type.key, lazyTypes)}, ${parseType(type.value, lazyTypes)}>`;
    case 'LuaLazyLoadedValue':
      const result = parseType(type.value, lazyTypes);
      const stringified = formatNameUnderscores(`lazy_${result}`);
      lazyTypes.push({ type: result, stringified });
      return stringified;
    case 'array':
      return `${parseType(type.value, lazyTypes)}[]`;
    case 'function':
      // TODO: Parsing a function with `parseType`, losing argument names, descriptions and return type
      const args = type.parameters.map((param, index) => `arg${index}: ${parseType(param, lazyTypes)}`).join(', ');
      return `fun(${args})`;
    case 'table':
      //TODO: how to process table?
      return 'table';
    case 'variant':
      return type.options.map(option => parseType(option, lazyTypes)).join(' | ');
  }
};

export const parseMethod = (method: Method, lazyTypes: LazyType[]) => {
  const args = method.parameters.map(param => `${param.name}: ${parseType(param.type, lazyTypes)}`).join(', ');
  const returnType = method.return_type ? `: ${parseType(method.return_type, lazyTypes)}` : '';
  return `fun(${args})${returnType}`;
}
