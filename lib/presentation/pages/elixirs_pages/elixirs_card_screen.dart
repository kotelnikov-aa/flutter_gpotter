import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';

class ElixirCardScreen extends StatelessWidget {
  final ElixirDto elixir;
  const ElixirCardScreen({Key? key, required this.elixir}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(elixir.name ?? ' '),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'basck',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
