import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:mobx/mobx.dart';

import '../../internal/enums.dart';
import '../../internal/navigation/navigation.dart';
part 'tab_screen_mobx.g.dart';

class TabScreenState = _TabScreenState with _$TabScreenState;

abstract class _TabScreenState with Store {
  @observable
  bool isSorting = false;
  @observable
  bool isFavorite = false;

  @observable
  int currentIndex = 0;

  @observable
  List<Widget> stackList = NavigatorList.getPages();

  late List<ReactionDisposer> _disposers;

  void setupValidators() {
    _disposers = [
      reaction((_) => currentIndex, changeTab),
      reaction((_) => stackList, changeList),
      reaction((_) => isSorting, setSort),
      reaction((_) => isFavorite, setFvorite),
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  void setSort(bool value) {
    isSorting = value;
  }

  void setFvorite(bool value) {
    isFavorite = value;
  }

  @action
  void changeTab(int index) {
    currentIndex = index;
  }

  void changeList(List<Widget> index) {
    stackList = index;
  }

  @action
  List<Widget> changeStackList() {
    List<Widget> stack;
    StatusSettings.change.favoriteSccreenStatus
        ? stack = NavigatorList.getFavoritePages()
        : stack = NavigatorList.getPages();
    return stack;
  }

  @action
  void changeFavorite() {
    if (isFavorite) {
      StatusSettings.change.favoriteSccreenStatus = false;
      isFavorite = false;
    } else {
      StatusSettings.change.favoriteSccreenStatus = true;
      isFavorite = true;
    }
    stackList = changeStackList();
  }

  @action
  void changeSorting() {
    if (isSorting) {
      StatusSettings.change.sortingListStatus = false;
      isSorting = false;
    } else {
      StatusSettings.change.sortingListStatus = true;
      isSorting = true;
    }
    stackList = changeStackList();
  }

  @computed
  Color get getSortingColor => isSorting ? primaryColor : secondaryColorDark;

  @computed
  Color get getFavoriteColor => isFavorite ? primaryColor : secondaryColorDark;

  @computed
  String get getAppbarTitle {
    String result = '';
    result = isFavorite ? 'favorite list ' : 'main list ';
    result += isSorting ? "is sorting by name" : "is't sotring";
    return result;
  }
}
