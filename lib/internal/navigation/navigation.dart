import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/presentation/pages/datafrom_api_screen.dart';
import '../../presentation/pages/data_favorite_screen.dart';

class NavigatorList {
  static List<Navigator> getPages() {
    List<Navigator> listpages = [
      Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) => const DataScreen(dataApi: DataAPI.elixirs),
        ),
      ),
      Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) => const DataScreen(dataApi: DataAPI.houses),
        ),
      ),
      Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) => const DataScreen(dataApi: DataAPI.spels),
        ),
      ),
      Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) => const DataScreen(dataApi: DataAPI.wizarts),
        ),
      ),
    ];
    return listpages;
  }

  static List<Navigator> getFavoritePages() {
    List<Navigator> listpages = [
      Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) =>
              const DataFavoriteScreen(dataApi: DataAPI.elixirs),
        ),
      ),
      Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) =>
              const DataFavoriteScreen(dataApi: DataAPI.houses),
        ),
      ),
      Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) =>
              const DataFavoriteScreen(dataApi: DataAPI.spels),
        ),
      ),
      Navigator(
        key: GlobalKey<NavigatorState>(),
        onGenerateRoute: (route) => MaterialPageRoute(
          settings: route,
          builder: (context) =>
              const DataFavoriteScreen(dataApi: DataAPI.wizarts),
        ),
      ),
    ];
    return listpages;
  }
}
