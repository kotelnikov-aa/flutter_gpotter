import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/loading_pages/loading_button.dart';
import 'package:hive/hive.dart';
import '../../internal/enums.dart';
import 'widgets_pages/potter_button.dart';
import '../../data/favorite_get_set/hive_data/get_box_hive.dart';
import '../../data/favorite_get_set/hive_data/make_key_get_id.dart';

class FaviriteButtonChange extends StatefulWidget {
  const FaviriteButtonChange({super.key, required this.value});
  final Object value;

  @override
  State<FaviriteButtonChange> createState() => _FaviriteButtonChangeState();
}

class _FaviriteButtonChangeState extends State<FaviriteButtonChange> {
  var _state = FavoritePositionState.loading;
  late Box box;
  Future<void> _boxinit() async {
    box = await getBoxHive(widget.value);
    if (box.isOpen) {
      bool isfavorite = _getFavorite();
      setState(
        () {
          isfavorite
              ? _state = FavoritePositionState.inFavorite
              : _state = FavoritePositionState.notInFavorite;
        },
      );
    }
  }

  bool _getFavorite() {
    bool res;
    String id = getIdfromApiInstance(widget.value);
    box.containsKey(id) ? res = true : res = false;
    return res;
  }

  Future _changeFavorite() async {
    String id = getIdfromApiInstance(widget.value);
    var key = makeKeyfromApiInstance(widget.value);
    box.containsKey(id)
        ? {
            await box.delete(id),
            setState(() {
              _state = FavoritePositionState.notInFavorite;
            }),
          }
        : {
            await box.put(id, key),
            setState(
              () {
                _state = FavoritePositionState.inFavorite;
              },
            ),
          };
  }

  @override
  void dispose() {
    box.close();
    super.dispose();
  }

  @override
  void initState() {
    _boxinit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: _Button(value: _state),
      onTap: () {
        setState(() {
          _state = FavoritePositionState.loading;
          _changeFavorite();
        });
      },
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({required this.value});
  final FavoritePositionState value;
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
