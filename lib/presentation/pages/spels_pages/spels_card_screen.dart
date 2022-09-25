import 'package:flutter/material.dart';

import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/spels_pages/spels_details_info_page.dart';

class SplelsCardScreen extends StatelessWidget {
  final SpellDto spels;
  const SplelsCardScreen({Key? key, required this.spels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          child: SplesDetailInfoView(spels: spels),
        ),
        TextButton(
          onPressed: () {
            // add to favorite,
          },
          child: const Text(
            'add to favorite',
          ),
        ),
        TextButton(
          onPressed: () {
            // sending
          },
          child: const Text(
            'sending',
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'back',
          ),
        ),
      ],
    );
  }
}
