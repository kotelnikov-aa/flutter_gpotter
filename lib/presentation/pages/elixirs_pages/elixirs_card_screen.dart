import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/favorite_button.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';
import '../../../internal/enums.dart';
import '../../../internal/share_screen.dart';
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
          const SizedBox(height: 5),
          ElixirsDetailInfoView(elixir: elixir),
          FaviriteButtonChange(value: elixir),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ShareScreen(text: elixir.name!, subject: elixir.effect!),
                ),
              );
            },
            child: const BottonPotter(value: 'send info'),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            child: const BottonPotter(value: 'back'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
