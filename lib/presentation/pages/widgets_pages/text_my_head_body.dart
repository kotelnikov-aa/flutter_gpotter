import 'package:flutter/material.dart';

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
            style: Theme.of(context).textTheme.headline6,
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
