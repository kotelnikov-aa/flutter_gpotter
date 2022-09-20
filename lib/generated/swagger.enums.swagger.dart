import 'package:json_annotation/json_annotation.dart';

enum ElixirDifficulty {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('Unknown')
  unknown,
  @JsonValue('Advanced')
  advanced,
  @JsonValue('Moderate')
  moderate,
  @JsonValue('Beginner')
  beginner,
  @JsonValue('OrdinaryWizardingLevel')
  ordinarywizardinglevel,
  @JsonValue('OneOfAKind')
  oneofakind
}

const $ElixirDifficultyMap = {
  ElixirDifficulty.unknown: 'Unknown',
  ElixirDifficulty.advanced: 'Advanced',
  ElixirDifficulty.moderate: 'Moderate',
  ElixirDifficulty.beginner: 'Beginner',
  ElixirDifficulty.ordinarywizardinglevel: 'OrdinaryWizardingLevel',
  ElixirDifficulty.oneofakind: 'OneOfAKind'
};

enum FeedbackType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('General')
  general,
  @JsonValue('Bug')
  bug,
  @JsonValue('DataError')
  dataerror,
  @JsonValue('Suggestion')
  suggestion
}

const $FeedbackTypeMap = {
  FeedbackType.general: 'General',
  FeedbackType.bug: 'Bug',
  FeedbackType.dataerror: 'DataError',
  FeedbackType.suggestion: 'Suggestion'
};

enum SpellLight {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('None')
  none,
  @JsonValue('Blue')
  blue,
  @JsonValue('IcyBlue')
  icyblue,
  @JsonValue('Red')
  red,
  @JsonValue('Gold')
  gold,
  @JsonValue('Purple')
  purple,
  @JsonValue('Transparent')
  transparent,
  @JsonValue('White')
  white,
  @JsonValue('Green')
  green,
  @JsonValue('Orange')
  orange,
  @JsonValue('Yellow')
  yellow,
  @JsonValue('BrightBlue')
  brightblue,
  @JsonValue('Pink')
  pink,
  @JsonValue('Violet')
  violet,
  @JsonValue('BlueishWhite')
  blueishwhite,
  @JsonValue('Silver')
  silver,
  @JsonValue('Scarlet')
  scarlet,
  @JsonValue('Fire')
  fire,
  @JsonValue('FieryScarlet')
  fieryscarlet,
  @JsonValue('Grey')
  grey,
  @JsonValue('DarkRed')
  darkred,
  @JsonValue('Turquoise')
  turquoise,
  @JsonValue('PsychedelicTransparentWave')
  psychedelictransparentwave,
  @JsonValue('BrightYellow')
  brightyellow,
  @JsonValue('BlackSmoke')
  blacksmoke
}

const $SpellLightMap = {
  SpellLight.none: 'None',
  SpellLight.blue: 'Blue',
  SpellLight.icyblue: 'IcyBlue',
  SpellLight.red: 'Red',
  SpellLight.gold: 'Gold',
  SpellLight.purple: 'Purple',
  SpellLight.transparent: 'Transparent',
  SpellLight.white: 'White',
  SpellLight.green: 'Green',
  SpellLight.orange: 'Orange',
  SpellLight.yellow: 'Yellow',
  SpellLight.brightblue: 'BrightBlue',
  SpellLight.pink: 'Pink',
  SpellLight.violet: 'Violet',
  SpellLight.blueishwhite: 'BlueishWhite',
  SpellLight.silver: 'Silver',
  SpellLight.scarlet: 'Scarlet',
  SpellLight.fire: 'Fire',
  SpellLight.fieryscarlet: 'FieryScarlet',
  SpellLight.grey: 'Grey',
  SpellLight.darkred: 'DarkRed',
  SpellLight.turquoise: 'Turquoise',
  SpellLight.psychedelictransparentwave: 'PsychedelicTransparentWave',
  SpellLight.brightyellow: 'BrightYellow',
  SpellLight.blacksmoke: 'BlackSmoke'
};

enum SpellType {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('None')
  none,
  @JsonValue('Charm')
  charm,
  @JsonValue('Conjuration')
  conjuration,
  @JsonValue('Spell')
  spell,
  @JsonValue('Transfiguration')
  transfiguration,
  @JsonValue('HealingSpell')
  healingspell,
  @JsonValue('DarkCharm')
  darkcharm,
  @JsonValue('Jinx')
  jinx,
  @JsonValue('Curse')
  curse,
  @JsonValue('MagicalTransportation')
  magicaltransportation,
  @JsonValue('Hex')
  hex,
  @JsonValue('CounterSpell')
  counterspell,
  @JsonValue('DarkArts')
  darkarts,
  @JsonValue('CounterJinx')
  counterjinx,
  @JsonValue('CounterCharm')
  countercharm,
  @JsonValue('Untransfiguration')
  untransfiguration,
  @JsonValue('BindingMagicalContract')
  bindingmagicalcontract,
  @JsonValue('Vanishment')
  vanishment
}

const $SpellTypeMap = {
  SpellType.none: 'None',
  SpellType.charm: 'Charm',
  SpellType.conjuration: 'Conjuration',
  SpellType.spell: 'Spell',
  SpellType.transfiguration: 'Transfiguration',
  SpellType.healingspell: 'HealingSpell',
  SpellType.darkcharm: 'DarkCharm',
  SpellType.jinx: 'Jinx',
  SpellType.curse: 'Curse',
  SpellType.magicaltransportation: 'MagicalTransportation',
  SpellType.hex: 'Hex',
  SpellType.counterspell: 'CounterSpell',
  SpellType.darkarts: 'DarkArts',
  SpellType.counterjinx: 'CounterJinx',
  SpellType.countercharm: 'CounterCharm',
  SpellType.untransfiguration: 'Untransfiguration',
  SpellType.bindingmagicalcontract: 'BindingMagicalContract',
  SpellType.vanishment: 'Vanishment'
};

enum TraitName {
  @JsonValue('swaggerGeneratedUnknown')
  swaggerGeneratedUnknown,
  @JsonValue('None')
  none,
  @JsonValue('Courage')
  courage,
  @JsonValue('Bravery')
  bravery,
  @JsonValue('Determination')
  determination,
  @JsonValue('Daring')
  daring,
  @JsonValue('Nerve')
  nerve,
  @JsonValue('Chivalary')
  chivalary,
  @JsonValue('Hardworking')
  hardworking,
  @JsonValue('Patience')
  patience,
  @JsonValue('Fairness')
  fairness,
  @JsonValue('Just')
  just,
  @JsonValue('Loyalty')
  loyalty,
  @JsonValue('Modesty')
  modesty,
  @JsonValue('Wit')
  wit,
  @JsonValue('Learning')
  learning,
  @JsonValue('Wisdom')
  wisdom,
  @JsonValue('Acceptance')
  acceptance,
  @JsonValue('Inteligence')
  inteligence,
  @JsonValue('Creativity')
  creativity,
  @JsonValue('Resourcefulness')
  resourcefulness,
  @JsonValue('Pride')
  pride,
  @JsonValue('Cunning')
  cunning,
  @JsonValue('Ambition')
  ambition,
  @JsonValue('Selfpreservation')
  selfpreservation
}

const $TraitNameMap = {
  TraitName.none: 'None',
  TraitName.courage: 'Courage',
  TraitName.bravery: 'Bravery',
  TraitName.determination: 'Determination',
  TraitName.daring: 'Daring',
  TraitName.nerve: 'Nerve',
  TraitName.chivalary: 'Chivalary',
  TraitName.hardworking: 'Hardworking',
  TraitName.patience: 'Patience',
  TraitName.fairness: 'Fairness',
  TraitName.just: 'Just',
  TraitName.loyalty: 'Loyalty',
  TraitName.modesty: 'Modesty',
  TraitName.wit: 'Wit',
  TraitName.learning: 'Learning',
  TraitName.wisdom: 'Wisdom',
  TraitName.acceptance: 'Acceptance',
  TraitName.inteligence: 'Inteligence',
  TraitName.creativity: 'Creativity',
  TraitName.resourcefulness: 'Resourcefulness',
  TraitName.pride: 'Pride',
  TraitName.cunning: 'Cunning',
  TraitName.ambition: 'Ambition',
  TraitName.selfpreservation: 'Selfpreservation'
};
