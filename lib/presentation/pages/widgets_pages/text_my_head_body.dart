import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/main.dart';

class TextHeadline1 extends StatelessWidget {
  const TextHeadline1({super.key, required this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    if (value != '') {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            style: myTheme(getScreenSize(context).index).textTheme.headline5,
            textAlign: TextAlign.center,
            softWrap: true,
            //overflow: TextOverflow.ellipsis,
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}

class TextBody1 extends StatelessWidget {
  const TextBody1({super.key, required this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          value,
          style: Theme.of(context).textTheme.bodyText1,
          textAlign: TextAlign.left,
          softWrap: true,
        ),
      ),
    );
  }
}
