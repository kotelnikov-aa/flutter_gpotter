import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/app_sizes.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/card_in_card.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/text_my_head_body.dart';

class HousesDetailInfoView extends StatelessWidget {
  final HouseDto houses;

  const HousesDetailInfoView({super.key, required this.houses});
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/house.png"),
                TextHeadline1(value: houses.name ?? ' '),
              ],
            ),
            TextBody1(value: 'Commonroom- ${houses.commonRoom ?? ''}'),
            CardInCard(value: [
              TextBody1(value: 'element- ${houses.element ?? ''}'),
              TextBody1(value: 'founder- ${houses.founder ?? ''}'),
            ]),
            TextBody1(value: 'ghost- ${houses.ghost ?? ''}'),
            CardInCard(value: [_ViewHeads(values: houses.heads!)]),
            CardInCard(value: [
              _ViewTraits(values: houses.traits!),
            ]),
          ],
        ),
      ),
    );
  }
}

class _ViewHeads extends StatelessWidget {
  final List<HouseHeadDto> values;
  const _ViewHeads({required this.values});
  @override
  Widget build(BuildContext context) {
    return values.isEmpty
        ? const TextBody1(value: 'not house head')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TextBody1(value: 'House heads: '),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) => TextBody1(
                  value:
                      '${values[index].firstName ?? ''} ${values[index].lastName ?? ''}',
                ),
              ),
            ],
          );
  }
}

class _ViewTraits extends StatelessWidget {
  final List<TraitDto> values;
  const _ViewTraits({required this.values});
  @override
  Widget build(BuildContext context) {
    return values.isEmpty
        ? const TextBody1(value: 'not traits in this elixir')
        : Padding(
            padding: EdgeInsets.all(
                DataFromScreenSize.cardPadding[getScreenSize(context).index]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextBody1(value: 'House traits:'),
                ListView.builder(
                  shrinkWrap: true,
                  padding: EdgeInsets.all(DataFromScreenSize
                      .cardPadding[getScreenSize(context).index]),
                  itemCount: values.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: _TraitName(value: values[index].name!),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          );
  }
}

class _TraitName extends StatelessWidget {
  const _TraitName({required this.value});
  final TraitName value;
  @override
  Widget build(BuildContext context) {
    var result = value.name;
    return TextBody1(value: result);
  }
}
