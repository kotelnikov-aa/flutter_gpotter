import 'package:hive/hive.dart';

import 'package:flutter_gpotter/generated/swagger.swagger.dart';

import '../../internal/enums.dart';
import 'hive_data/get_box_hive.dart';

Future getFavoriteList(DataAPI dataApi) async {
  switch (dataApi) {
    case DataAPI.elixirs:
      {
        final deflist = StatusSettings.change.elixirs;
        Box box = await getBoxHive(deflist.first);
        List<ElixirDto> favoriteList = <ElixirDto>[];
        if (box.isOpen) {
          for (var i = 0; i < deflist.length; i++) {
            if (box.containsKey(deflist[i].id.toString())) {
              favoriteList.add(deflist[i]);
            }
          }
        }
        box.close();
        return favoriteList;
      }
    case DataAPI.houses:
      final deflist = StatusSettings.change.houses;
      Box box = await getBoxHive(deflist.first);
      List<HouseDto> favoriteList = <HouseDto>[];
      if (box.isOpen) {
        for (var i = 0; i < deflist.length; i++) {
          if (box.containsKey(deflist[i].id.toString())) {
            favoriteList.add(deflist[i]);
          }
        }
      }
      box.close();
      return favoriteList;
    case DataAPI.spels:
      final deflist = StatusSettings.change.spels;
      Box box = await getBoxHive(deflist.first);
      List<SpellDto> favoriteList = <SpellDto>[];
      if (box.isOpen) {
        for (var i = 0; i < deflist.length; i++) {
          if (box.containsKey(deflist[i].id.toString())) {
            favoriteList.add(deflist[i]);
          }
        }
      }
      box.close();
      return favoriteList;
    case DataAPI.wizarts:
      final deflist = StatusSettings.change.wizarts;
      Box box = await getBoxHive(deflist.first);
      List<WizardDto> favoriteList = <WizardDto>[];
      if (box.isOpen) {
        for (var i = 0; i < deflist.length; i++) {
          if (box.containsKey(deflist[i].id.toString())) {
            favoriteList.add(deflist[i]);
          }
        }
      }
      box.close();
      return favoriteList;
  }
}
