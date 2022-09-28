import 'package:flutter/material.dart';

class ValidFirstNameWidget extends StatelessWidget {
  const ValidFirstNameWidget({required String this.value});
  final String value;
  @override
  Widget build(BuildContext context) {
    if (value != 'default') {
      return Text(value);
    } else {
      return Container();
    }
  }
}
