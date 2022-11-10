import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/presentation/pages/spels_pages/spels_details_info_page.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';
import '../../../internal/share_screen.dart';
import '../favorite_button.dart';
import '../widgets_pages/back_button.dart';

class SplelsCardScreen extends StatelessWidget {
  final SpellDto spels;
  const SplelsCardScreen({Key? key, required this.spels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(child: SplesDetailInfoView(spels: spels)),
          FaviriteButtonChange(value: spels),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ShareScreen(text: spels.name!, subject: spels.effect!),
                ),
              );
            },
            child: const BottonPotter(value: 'send info'),
          ),
          const BackButtonPotter(apiKey: DataAPI.spels),
        ],
      ),
    );
  }
}
