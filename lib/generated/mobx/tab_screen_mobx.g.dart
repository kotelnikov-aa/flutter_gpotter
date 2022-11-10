// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_screen_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TabScreenState on _TabScreenState, Store {
  Computed<Color>? _$getSortingColorComputed;

  @override
  Color get getSortingColor => (_$getSortingColorComputed ??= Computed<Color>(
          () => super.getSortingColor,
          name: '_TabScreenState.getSortingColor'))
      .value;
  Computed<Color>? _$getFavoriteColorComputed;

  @override
  Color get getFavoriteColor => (_$getFavoriteColorComputed ??= Computed<Color>(
          () => super.getFavoriteColor,
          name: '_TabScreenState.getFavoriteColor'))
      .value;
  Computed<String>? _$getAppbarTitleComputed;

  @override
  String get getAppbarTitle =>
      (_$getAppbarTitleComputed ??= Computed<String>(() => super.getAppbarTitle,
              name: '_TabScreenState.getAppbarTitle'))
          .value;

  late final _$isSortingAtom =
      Atom(name: '_TabScreenState.isSorting', context: context);

  @override
  bool get isSorting {
    _$isSortingAtom.reportRead();
    return super.isSorting;
  }

  @override
  set isSorting(bool value) {
    _$isSortingAtom.reportWrite(value, super.isSorting, () {
      super.isSorting = value;
    });
  }

  late final _$isFavoriteAtom =
      Atom(name: '_TabScreenState.isFavorite', context: context);

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  late final _$currentIndexAtom =
      Atom(name: '_TabScreenState.currentIndex', context: context);

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  late final _$stackListAtom =
      Atom(name: '_TabScreenState.stackList', context: context);

  @override
  List<Widget> get stackList {
    _$stackListAtom.reportRead();
    return super.stackList;
  }

  @override
  set stackList(List<Widget> value) {
    _$stackListAtom.reportWrite(value, super.stackList, () {
      super.stackList = value;
    });
  }

  late final _$_TabScreenStateActionController =
      ActionController(name: '_TabScreenState', context: context);

  @override
  void changeTab(int index) {
    final _$actionInfo = _$_TabScreenStateActionController.startAction(
        name: '_TabScreenState.changeTab');
    try {
      return super.changeTab(index);
    } finally {
      _$_TabScreenStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  List<Widget> changeStackList() {
    final _$actionInfo = _$_TabScreenStateActionController.startAction(
        name: '_TabScreenState.changeStackList');
    try {
      return super.changeStackList();
    } finally {
      _$_TabScreenStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeFavorite() {
    final _$actionInfo = _$_TabScreenStateActionController.startAction(
        name: '_TabScreenState.changeFavorite');
    try {
      return super.changeFavorite();
    } finally {
      _$_TabScreenStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeSorting() {
    final _$actionInfo = _$_TabScreenStateActionController.startAction(
        name: '_TabScreenState.changeSorting');
    try {
      return super.changeSorting();
    } finally {
      _$_TabScreenStateActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isSorting: ${isSorting},
isFavorite: ${isFavorite},
currentIndex: ${currentIndex},
stackList: ${stackList},
getSortingColor: ${getSortingColor},
getFavoriteColor: ${getFavoriteColor},
getAppbarTitle: ${getAppbarTitle}
    ''';
  }
}
