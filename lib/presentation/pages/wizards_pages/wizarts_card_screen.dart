import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';
import 'package:flutter_gpotter/presentation/pages/windgets/potter_button.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_detail_info_page.dart';

class WizartsCardScreen extends StatelessWidget {
  final WizardDto wizarts;
  const WizartsCardScreen({Key? key, required this.wizarts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          WizartsDetailInfoView(wizarts: wizarts),
          const BottonPotter(value: 'add to favorite'),
          const BottonPotter(value: 'send info'),
          GestureDetector(
            child: const BottonPotter(value: 'back'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
