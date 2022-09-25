import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';

class ElixirsDetailInfoView extends StatelessWidget {
  final ElixirDto elixir;

  const ElixirsDetailInfoView({super.key, required this.elixir});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(elixir.name ?? ' '),
          Text(elixir.effect ?? ' '),
          Text(elixir.sideEffects ?? ' '),
          Text(elixir.characteristics ?? ' '),
          Text(elixir.time ?? ' '),
          Text(elixir.difficulty.toString()),
          Text(elixir.inventors.toString()),
          Text(elixir.manufacturer ?? ' '),
        ],
      ),
    );
  }
}
