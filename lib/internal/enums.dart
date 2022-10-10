enum ContentState {
  initial,
  loading,
  success,
  empty,
  failure,
}

class StatusSettings {
  StatusSettings._();
  bool _favoriteSccreenStatus = false;
  bool _sortingListStatus = false;
  static final StatusSettings change = StatusSettings._();

  bool get favoriteSccreenStatus => _favoriteSccreenStatus;
  bool get sortingListStatus => _sortingListStatus;
  set favoriteSccreenStatus(bool value) => _favoriteSccreenStatus = value;
  set sortingListStatus(bool value) => _sortingListStatus = value;
}

enum DataAPI {
  elixirs,
  houses,
  spels,
  wizarts,
}
