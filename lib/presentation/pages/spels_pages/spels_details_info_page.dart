import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/card_in_card.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/text_my_head_body.dart';

class SplesDetailInfoView extends StatelessWidget {
  final SpellDto spels;

  const SplesDetailInfoView({super.key, required this.spels});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(
            DataFromScreenSize.cardPadding[getScreenSize(context).index]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeadline1(value: spels.name ?? ' '),
            CardInCard(value: [
              TextBody1(value: 'Elixir effect: ${spels.effect ?? ' '}')
            ]),
            TextBody1(value: 'spepls creator: ${spels.creator ?? ''} '),
            TextBody1(value: 'type: ${spels.type.toString()}'),
            TextBody1(value: 'incantation: ${spels.incantation.toString()}'),
            TextBody1(value: 'SplelsLight: ${spels.light}'),
          ],
        ),
      ),
    );
  }
}
