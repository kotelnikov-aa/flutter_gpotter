import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/elixirs_screen.dart';
import 'package:flutter_gpotter/presentation/pages/houses.dart';
import 'package:flutter_gpotter/presentation/pages/spels_screen.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_screen.dart';


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
  set setcurrentpagekey(GlobalKey<NavigatorState> val) => _currentpage = val;
  GlobalKey<NavigatorState>? get getcurrentpagekey => _currentpage;

  List<Navigator> listpages = [
    Navigator(
      key: keyspages[0],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const ElixirScreen(),
      ),
    ),
    Navigator(
      key: keyspages[1],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const HousesScreen(),
      ),
    ),
    Navigator(
      key: keyspages[2],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const SpelsScreen(),
      ),
    ),
    Navigator(
      key: keyspages[3],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const WizartsScreen(),
      ),
    ),
  ];

  List<Navigator> favoritelistpages = [
    Navigator(
      key: keyspages[4],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const ElixirScreen(),
      ),
    ),
    Navigator(
      key: keyspages[5],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const HousesScreen(),
      ),
    ),
    Navigator(
      key: keyspages[6],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const SpelsScreen(),
      ),
    ),
    Navigator(
      key: keyspages[7],
      onGenerateRoute: (route) => MaterialPageRoute(
        settings: route,
        builder: (context) => const WizartsScreen(),
      ),
    ),
  ];
}
