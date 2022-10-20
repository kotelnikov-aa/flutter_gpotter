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
  static final StatusSettings change = StatusSettings._();

  bool get favoriteSccreenStatus => _favoriteSccreenStatus;
  bool get sortingListStatus => _sortingListStatus;
  String get searchText => _searchText;

  set searchText(String value) => _searchText = value;
  set favoriteSccreenStatus(bool value) => _favoriteSccreenStatus = value;


  set sortingListStatus(bool value) => _sortingListStatus = value;
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
