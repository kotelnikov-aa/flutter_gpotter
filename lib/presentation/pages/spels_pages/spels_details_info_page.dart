import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';

class SplesDetailInfoView extends StatelessWidget {
  final SpellDto spels;

  const SplesDetailInfoView({super.key, required this.spels});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(spels.name ?? ' '),
        Text(spels.effect ?? ' '),
        Text(spels.type.toString()),
      ],
    );
  }
}
