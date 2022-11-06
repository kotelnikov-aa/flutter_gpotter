import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/card_in_card.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/text_my_head_body.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/valid_name.dart';

class WizartsDetailInfoView extends StatelessWidget {
  final WizardDto wizarts;

  const WizartsDetailInfoView({super.key, required this.wizarts});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(
            DataFromScreenSize.getCardPadding(getScreenSize(context).index)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeadline1(value: validName(wizarts.firstName ?? '')),
            TextHeadline1(value: wizarts.lastName ?? ''),
            CardInCard(value: [_ViewIngredients(values: wizarts.elixirs!)]),
          ],
        ),
      ),
    );
  }
}

class _ViewIngredients extends StatelessWidget {
  final List<WizardElixirDto> values;
  const _ViewIngredients({required this.values});

  @override
  Widget build(BuildContext context) {
    return values.isEmpty
        ? const TextBody1(value: 'not elixirs in her person')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextBody1(value: 'elixirs:'),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) =>
                    TextBody1(value: values[index].name ?? ''),
              ),
            ],
          );
  }
}
