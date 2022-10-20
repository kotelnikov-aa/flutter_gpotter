import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_detail_info_page.dart';
import '../../../internal/share_screen.dart';
import '../favorite_button.dart';
import '../widgets_pages/back_button.dart';

class WizartsCardScreen extends StatelessWidget {
  final WizardDto wizarts;
  const WizartsCardScreen({Key? key, required this.wizarts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WizartsDetailInfoView(wizarts: wizarts),
          FaviriteButtonChange(value: wizarts),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShareScreen(
                      text: wizarts.firstName!, subject: wizarts.lastName!),
                ),
              );
            },
            child: const BottonPotter(value: 'send info'),
          ),
          const BackButtonPotter(),
        ],
      ),
    );
  }
}
