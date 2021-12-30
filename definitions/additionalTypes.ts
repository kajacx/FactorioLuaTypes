export type AliasType = {
  name: string;
  description: string;
  targetType: string; // TODO: replace this with some kind of "lua type" enum?
};

export const aliases: AliasType[] = [
  {
    name: 'int',
    description: 'Integer value',
    targetType: 'number',
  },
  {
    name: 'uint',
    description: 'Unsigned (always non-negative) integer value',
    targetType: 'number',
  },
  {
    name: 'int8',
    description: 'Signed byte value',
    targetType: 'number',
  },
  {
    name: 'uint8',
    description: 'Unsigned byte value',
    targetType: 'number',
  },
  {
    name: 'uint16',
    description: 'Unsigned 16 bit integer value',
    targetType: 'number',
  },
  {
    name: 'uint64',
    description: 'Unsigned 64 bit integer value',
    targetType: 'number',
  },
  {
    name: 'float',
    description: 'Single precision floating point value',
    targetType: 'number',
  },
  {
    name: 'double',
    description: 'Double precision floating point value',
    targetType: 'number',
  },
];
