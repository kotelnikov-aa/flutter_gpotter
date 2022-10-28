import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/text_my_head_body.dart';
import '../../../internal/constants/colors.dart';
import '../widgets_pages/card_in_card.dart';

class ElixirsDetailInfoView extends StatelessWidget {
  final ElixirDto elixir;

  const ElixirsDetailInfoView({super.key, required this.elixir});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderradiusCard)),
      elevation: elevationAll,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextHeadline1(value: elixir.name ?? ' '),
            CardInCard(value: [
              TextBody1(value: 'Elixir effect: ${elixir.effect ?? ' '}'),
              TextBody1(value: 'Side effects: ${elixir.sideEffects ?? ' '}'),
            ]),
            TextBody1(value: 'time:  ${elixir.time ?? ' '}'),
            TextBody1(value: 'manufacturer: ${elixir.manufacturer ?? ' '}'),
            TextBody1(
                value: 'characteristics:  ${elixir.characteristics ?? ' '}'),
            const Divider(),
            CardInCard(value: [_ViewIngredients(values: elixir.ingredients!)]),
            CardInCard(value: [_ViewInventors(values: elixir.inventors!)]),
          ],
        ),
      ),
    );
  }
}

class _ViewIngredients extends StatelessWidget {
  final List<IngredientDto> values;
  const _ViewIngredients({required this.values});

  @override
  Widget build(BuildContext context) {
    return values.isEmpty
        ? const TextBody1(value: 'not ingredients in this elixir')
        : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const TextBody1(value: 'ingredients:'),
            ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              itemCount: values.length,
              itemBuilder: (BuildContext context, int index) =>
                  TextBody1(value: values[index].name ?? ''),
            )
          ]);
  }
}

class _ViewInventors extends StatelessWidget {
  final List<ElixirInventorDto> values;
  const _ViewInventors({required this.values});

  @override
  Widget build(BuildContext context) {
    return values.isEmpty
        ? const TextBody1(value: 'not iinventors in this elixir')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextBody1(value: 'inventors:'),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) => TextBody1(
                    value: '${values[index].firstName!} '
                        ' ${values[index].lastName!} '),
              ),
            ],
          );
  }
}
