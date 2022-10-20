import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/presentation/pages/datafromAPI_screen.dart';
import '../../presentation/pages/data_favorite_screen.dart';

class NavigatorsPages {
  NavigatorsPages._();
  static final NavigatorsPages _instance = NavigatorsPages._();
  factory NavigatorsPages() {
    return _instance;
  }

  static final keyspages = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];
  static GlobalKey<NavigatorState>? _currentpage;
  set currentpagekey(GlobalKey<NavigatorState> val) => _currentpage = val;
  GlobalKey<NavigatorState>? get currentpage => _currentpage;

  List<Navigator> listpages = [
    Navigator(
      key: keyspages[0],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const DataScreen(dataApi: DataAPI.elixirs),
      ),
    ),
    Navigator(
      key: keyspages[1],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const DataScreen(dataApi: DataAPI.houses),
      ),
    ),
    Navigator(
      key: keyspages[2],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const DataScreen(dataApi: DataAPI.spels),
      ),
    ),
    Navigator(
      key: keyspages[3],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const DataScreen(dataApi: DataAPI.wizarts),
      ),
    ),
  ];

  List<Navigator> favoritelistpages = [
    Navigator(
      key: keyspages[4],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) =>
            const DataFavoriteScreen(dataApi: DataAPI.elixirs),
      ),
    ),
    Navigator(
      key: keyspages[5],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const DataFavoriteScreen(dataApi: DataAPI.houses),
      ),
    ),
    Navigator(
      key: keyspages[6],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const DataFavoriteScreen(dataApi: DataAPI.spels),
      ),
    ),
    Navigator(
      key: keyspages[7],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) =>
            const DataFavoriteScreen(dataApi: DataAPI.wizarts),
      ),
    ),
  ];
}
