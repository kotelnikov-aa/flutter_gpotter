import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/windgets/potter_button.dart';
import 'elixirs_delail_info_page.dart';

class ElixirCardScreen extends StatelessWidget {
  final ElixirDto elixir;
  const ElixirCardScreen({Key? key, required this.elixir}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElixirsDetailInfoView(elixir: elixir),
          const BottonPotter(value: 'add to favorite'),
          const BottonPotter(value: 'send info'),
          GestureDetector(
            child: const BottonPotter(value: 'back'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
