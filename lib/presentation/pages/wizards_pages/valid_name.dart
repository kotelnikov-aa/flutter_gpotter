import 'package:flutter/material.dart';

class ValidFirstNameWidget extends StatelessWidget {
  const ValidFirstNameWidget({
    Key? key,
    required this.value,
  }) : super(key: key);
  final String value;
  @override
  Widget build(BuildContext context) {
    if (value != 'default') {
      return Text(
        value,
        style: Theme.of(context).textTheme.headline6,
      );
    } else {
      return Container();
    }
  }
}
