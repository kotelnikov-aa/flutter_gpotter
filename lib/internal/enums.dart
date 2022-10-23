import 'package:flutter_gpotter/generated/swagger.swagger.dart';

enum ContentState {
  initial,
  loading,
  success,
  empty,
  failure,
}

enum Share {
  facebook,
  messenger,
  twitter,
  whatsapp,
  whatsapp_personal,
  whatsapp_business,
  share_system,
  share_instagram,
  share_telegram
}

class StatusSettings {
  StatusSettings._();
  bool _favoriteSccreenStatus = false;
  bool _sortingListStatus = false;
  String _searchText = '';
  late List<ElixirDto> _elixirs;
  late List<HouseDto> _houses;
  late List<SpellDto> _spels;
  late List<WizardDto> _wizarts;

  static final StatusSettings change = StatusSettings._();

  List<ElixirDto> get elixirs => _elixirs.isEmpty ? [] : _elixirs;
  List<HouseDto> get houses => _elixirs.isEmpty ? [] : _houses;
  List<SpellDto> get spels => _elixirs.isEmpty ? [] : _spels;
  List<WizardDto> get wizarts => _elixirs.isEmpty ? [] : _wizarts;

  bool get favoriteSccreenStatus => _favoriteSccreenStatus;
  bool get sortingListStatus => _sortingListStatus;
  String get searchText => _searchText;

  set elixirs(List<ElixirDto> value) => _elixirs = value;
  set houses(List<HouseDto> value) => _houses = value;
  set spels(List<SpellDto> value) => _spels = value;
  set wizarts(List<WizardDto> value) => _wizarts = value;

  set favoriteSccreenStatus(bool value) => _favoriteSccreenStatus = value;
  set sortingListStatus(bool value) => _sortingListStatus = value;
  set searchText(String value) => _searchText = value;
}

enum DataAPI {
  elixirs,
  houses,
  spels,
  wizarts,
}

enum FavoritePositionState {
  init,
  loading,
  inFavorite,
  notInFavorite,
}
