import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import '../../../internal/constants/colors.dart';

class ElixirsDetailInfoView extends StatelessWidget {
  final ElixirDto elixir;

  const ElixirsDetailInfoView({super.key, required this.elixir});

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
                child: Text(elixir.name ?? ' ')),
            Text('Elixir effect: ${elixir.effect ?? ' '}'),
            Text('Side effects: ${elixir.sideEffects ?? ' '}',
                textAlign: TextAlign.left, softWrap: true),
            Row(children: [
              const Text('time: '),
              Text(elixir.time ?? ' '),
            ]),
            Row(children: [
              const Text('time: '),
              Text(elixir.time ?? ' '),
            ]),
            const SizedBox(height: 3.0),
            Text('manufacturer: ${elixir.manufacturer ?? ' '}'),
            const SizedBox(height: 3.0),
            Text('characteristics:  ${elixir.characteristics ?? ' '}'),
            const Divider(),
            _ViewIngredients(values: elixir.ingredients!),
            _ViewInventors(values: elixir.inventors!),
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
        ? const Text('not ingredients in this elixir')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('ingredients:'),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(values[index].name ?? ''),
                      ),
                    ],
                  );
                },
              ),
            ],
          );
  }
}

class _ViewInventors extends StatelessWidget {
  final List<ElixirInventorDto> values;
  const _ViewInventors({required this.values});

  @override
  Widget build(BuildContext context) {
    return values.isEmpty
        ? const Text('not iinventors in this elixir')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('inventors:'),
              ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                itemCount: values.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('${values[index].firstName!} '
                            ' ${values[index].firstName!} '),
                      ),
                    ],
                  );
                },
              ),
            ],
          );
  }
}
