
import 'package:flutter_gpotter/generated/swagger.swagger.dart';

import '../../../generated/hive_storage/hive_storage.dart';

makeKeyfromApiInstance(Object value) {
  switch (value.runtimeType) {
    case ElixirDto:
      value as ElixirDto;
      KeyElixir key = KeyElixir(urlElixir: value.id.toString());
      return key;
    case HouseDto:
      value as HouseDto;
      KeyHouse key = KeyHouse(urlHouse: value.id.toString());
      return key;
    case SpellDto:
      value as SpellDto;
      KeySpel key = KeySpel(urlSpel: value.id.toString());
      return key;
    default:
      value as WizardDto;
      KeyWizard key = KeyWizard(urlWizard: value.id.toString());
      return key;
  }
}

String getIdfromApiInstance(Object value) {
  switch (value.runtimeType) {
    case ElixirDto:
      value as ElixirDto;
      return value.id ?? '';
    case HouseDto:
      value as HouseDto;
      return value.id ?? '';
    case SpellDto:
      value as SpellDto;
      return value.id ?? '';
    default:
      value as WizardDto;
      return value.id ?? '';
  }
}
