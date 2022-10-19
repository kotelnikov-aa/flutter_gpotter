import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';

class BackButtonPotter extends StatelessWidget {
  const BackButtonPotter({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const BottonPotter(value: 'back'),
      onTap: () => Navigator.pop(context),
    );
  }
}
