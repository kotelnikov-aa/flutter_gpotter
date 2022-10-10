import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';

class BottonPotter extends StatelessWidget {
  const BottonPotter({super.key, required this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.circular(borderradiusCard),
        ),
        width: MediaQuery.of(context).size.width - 10.0,
        height: 40,
        alignment: Alignment.center,
        child: Text(value, style: Theme.of(context).textTheme.button),
      ),
    );
  }
}
