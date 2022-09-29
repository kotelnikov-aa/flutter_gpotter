import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/valid_name.dart';

class WizartsDetailInfoView extends StatelessWidget {
  final WizardDto wizarts;

  const WizartsDetailInfoView({super.key, required this.wizarts});

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
            ValidFirstNameWidget(value: wizarts.firstName ?? ''),
            Text(wizarts.lastName ?? ''),
            const SizedBox(height: 5),
            _ViewIngredients(values: wizarts.elixirs!),
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
        ? const Text('not elixirs in her person')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('elixirs:'),
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
