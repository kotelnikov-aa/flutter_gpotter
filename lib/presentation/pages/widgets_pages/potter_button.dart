import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/main.dart';

class BottonPotter extends StatelessWidget {
  const BottonPotter({super.key, required this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
          DataFromScreenSize.getCardPadding(getScreenSize(context).index)),
      child: AspectRatio(
        aspectRatio: 12 / 1,
        child: Container(
          decoration: BoxDecoration(
            color: secondaryColorLight,
            borderRadius: BorderRadius.circular(
                DataFromScreenSize.getRadius(getScreenSize(context).index) * 2),
          ),
          alignment: Alignment.center,
          child: Text(value,
              style: myTheme(getScreenSize(context).index).textTheme.button),
        ),
      ),
    );
  }
}
