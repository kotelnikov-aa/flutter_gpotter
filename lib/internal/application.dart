import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/home.dart';

class Application extends StatelessWidget {
  const Application({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
