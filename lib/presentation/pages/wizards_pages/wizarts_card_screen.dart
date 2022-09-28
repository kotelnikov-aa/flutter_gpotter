import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_detail_info_page.dart';

class WizartsCardScreen extends StatelessWidget {
  final WizardDto wizarts;
  const WizartsCardScreen({Key? key, required this.wizarts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WizartsDetailInfoView(wizarts: wizarts),
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
      ),
    );
  }
}
