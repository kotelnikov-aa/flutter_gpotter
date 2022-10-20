import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:hive/hive.dart';
import '../../../generated/hive_storage/hive_storage.dart';
import '../../../internal/constants/storage.dart';

Future getBoxHive(Object value) async {
  // Hive.deleteBoxFromDisk(favoriteNameStorage);
  switch (value.runtimeType) {
    case ElixirDto:
      value as ElixirDto;
      if (!Hive.isAdapterRegistered(1)) {
        Hive.registerAdapter(KeyElixirAdapter());
      }
      final boxWiz = await Hive.openBox<KeyElixir>(storageElixirsId);
      return boxWiz;
    case HouseDto:
      value as HouseDto;
      if (!Hive.isAdapterRegistered(2)) {
        Hive.registerAdapter(KeyHouseAdapter());
      }
      final boxHouse = await Hive.openBox<KeyHouse>(storageHousesId);
      return boxHouse;
    case SpellDto:
      value as SpellDto;
      if (!Hive.isAdapterRegistered(3)) {
        Hive.registerAdapter(KeySpelAdapter());
      }
      final boxSpel = await Hive.openBox<KeySpel>(storageSpelsId);
      return boxSpel;
    default:
      value as WizardDto;
      if (!Hive.isAdapterRegistered(4)) {
        Hive.registerAdapter(KeyWizardAdapter());
      }
      final boxWizard = await Hive.openBox<KeyWizard>(storageWizardsId);
      return boxWizard;
  }
}
