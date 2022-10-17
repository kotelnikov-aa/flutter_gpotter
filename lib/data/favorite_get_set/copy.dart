/*

import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/storage.dart';
import 'package:flutter_gpotter/presentation/pages/loading_pages/loading_button.dart';
import 'package:hive/hive.dart';

import '../../generated/hive_storage/hive_storage.dart';
import '../../generated/swagger.swagger.dart';
import '../../internal/enums.dart';
import '../../presentation/pages/windgets/potter_button.dart';
import 'get_box.dart';

class FaviriteButtonChange extends StatefulWidget {
  const FaviriteButtonChange({super.key, required this.value});
  final Object value;

  @override
  State<FaviriteButtonChange> createState() => _FaviriteButtonChangeState();
}

class _FaviriteButtonChangeState extends State<FaviriteButtonChange> {
  var _state = FavoritePositionState.loading;

  Future<void> _changeFavoriteState(Object value) async {
    bool _result = await changeFavorite(value);
    if (_result == true) {
      setState(() {
        _state = FavoritePositionState.notInFavorite;
      });
    } else {
      setState(() {
        _state = FavoritePositionState.inFavorite;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: _Button(value: _state),
      onTap: () {
        setState(() {
          _state = FavoritePositionState.loading;
          _changeFavoriteState(widget.value);
        });
      },
    );
  }
}

class _Button extends StatelessWidget {
  _Button({super.key, required this.value});
  FavoritePositionState value;
  @override
  Widget build(BuildContext context) {
    switch (value) {
      case FavoritePositionState.inFavorite:
        return const BottonPotter(value: 'delete from favorite');
      case FavoritePositionState.notInFavorite:
        return const BottonPotter(value: 'add to favorite');
      default:
        return const LoadingButton();
    }
  }
}

// Future<bool> load(Object value) async {
//   late bool _res;
//   switch (value.runtimeType) {
//     case ElixirDto:
//       value as ElixirDto;
//       if (!Hive.isAdapterRegistered(1)) {
//         Hive.registerAdapter(KeyElixirAdapter());
//       }
//       final boxWiz = await Hive.openBox<KeyElixir>(favoriteNameStorage);
//       KeyElixir key = KeyElixir(urlElixir: value.id.toString());
//       boxWiz.containsKey(value.id.toString())
//           ? {
//               boxWiz.delete(value.id.toString()),
//               _res = false,
//             }
//           : {
//               boxWiz.put(value.id.toString(), key),
//               _res = true,
//             };
//       boxWiz.close();
//       await Future.delayed(const Duration(seconds: 1));
//       return _res;
//     default:
//       return false;
//   }
// }

Future<bool> changeFavorite(Object value) async {
  late bool _res;
  String id = _getIdfromApiInstance(value);
  //value as ElixirDto;
  final box = await getBoxHive(value);
  var key = _setKeyfromApiInstance(value);
  box.containsKey(id)
      ? {
          box.delete(id),
          _res = false,
        }
      : {
          box.put(id, key),
          _res = true,
        };
  box.close();
  await Future.delayed(const Duration(milliseconds: 300));
  return _res;
}

Future<bool> getFavorite(Object value) async {
  late bool _res;
  String id = _getIdfromApiInstance(value);
  final box = await getBoxHive(value);
  var key = _setKeyfromApiInstance(value);
  box.containsKey(id) ? _res = true : _res = false;

  box.close();
  await Future.delayed(const Duration(milliseconds: 300));
  return _res;
}

_setKeyfromApiInstance(Object value) {
  switch (value.runtimeType) {
    case ElixirDto:
      value as ElixirDto;
      KeyElixir key = KeyElixir(urlElixir: value.id.toString());
      return key;
    case HouseDto:
      value as HouseDto;
      KeyHouse key = KeyHouse(urlHouse: value.id.toString());
      return key;
    case SpellDto:
      value as SpellDto;
      KeySpel key = KeySpel(urlSpel: value.id.toString());
      return key;
    default:
      value as WizardDto;
      KeyWizard key = KeyWizard(urlWizard: value.id.toString());
      return key;
  }
}

String _getIdfromApiInstance(Object value) {
  switch (value.runtimeType) {
    case ElixirDto:
      value as ElixirDto;
      return value.id ?? '';
    case HouseDto:
      value as HouseDto;
      return value.id ?? '';
    case SpellDto:
      value as SpellDto;
      return value.id ?? '';
    default:
      value as WizardDto;
      return value.id ?? '';
  }
}

// Future<bool> changeFavorite(Object value) async {
//   late bool _res;
//   final box = await getBoxHive(value.runtimeType);
//   final idApi = _getIdfromApiInstance(value);
//   box.containsKey(idApi.toString())
//       ? {
//           box.delete(idApi.toString()),
//           _res = false,
//         }
//       : {
//           box.put(
//             idApi.toString(),
//             KeyElixir(urlElixir: idApi),
//           ),
//           _res = true,
//         };
//   box.close();
//   await Future.delayed(const Duration(seconds: 1));
//   return _res;
// }


*/