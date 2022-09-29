import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/Colors.dart';

class SplesDetailInfoView extends StatelessWidget {
  final SpellDto spels;

  const SplesDetailInfoView({super.key, required this.spels});

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
                child: Text(spels.name ?? ' ')),
            Text('Elixir effect: ${spels.effect ?? ' '}'),
            Text('Side effects: ${spels.light ?? ' '}',
                textAlign: TextAlign.left, softWrap: true),
            Row(children: [
              const Text('time: '),
              Text(spels.creator ?? ' '),
            ]),
            Row(children: [
              const Text('time: '),
              Text(spels.type.toString()),
            ]),
            const SizedBox(height: 3.0),
            Text('manufacturer: ${spels.incantation.toString()}'),
          ],
        ),
      ),
    );
  }
}
