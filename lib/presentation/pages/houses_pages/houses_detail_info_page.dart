import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';

class HousesDetailInfoView extends StatelessWidget {
  final HouseDto houses;

  const HousesDetailInfoView({super.key, required this.houses});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: elevationAll,
      child: Padding(
        padding: const EdgeInsets.only(left: 3.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Text(houses.name ?? ' ')),
            Text('Colours- ${houses.houseColours ?? ''}',
                textAlign: TextAlign.left, softWrap: true),
            Text('Commonroom- ${houses.commonRoom ?? ''}',
                textAlign: TextAlign.left, softWrap: true),
            Text('element- ${houses.element ?? ''}',
                textAlign: TextAlign.left, softWrap: true),
            Text('founder- ${houses.founder ?? ''}',
                textAlign: TextAlign.left, softWrap: true),
            Text('ghost- ${houses.ghost ?? ''}',
                textAlign: TextAlign.left, softWrap: true),
            _ViewHeads(values: houses.heads!),
            _ViewTraits(values: houses.traits!),
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
        ? const Text('not house head')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('House heads:'),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                            '${values[index].firstName ?? ''} ${values[index].lastName ?? ''}',
                            textAlign: TextAlign.left,
                            softWrap: true),
                      ),
                    ],
                  );
                },
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
        ? const Text('not traits in this elixir')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('House traits:'),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
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
          );
  }
}

class _TraitName extends StatelessWidget {
  const _TraitName({required this.value});
  final TraitName value;
  @override
  Widget build(BuildContext context) {
    var result = value.name;
    return Text(result);
  }
}
