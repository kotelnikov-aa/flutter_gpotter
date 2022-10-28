import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/colors.dart';

class CardInCard extends StatelessWidget {
  const CardInCard({super.key, required this.value});
  final List<Widget> value;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderradiusCard)),
      elevation: elevationAll,
      color: colorCardTwo,
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.all(8),
          itemCount: value.length,
          itemBuilder: (BuildContext context, int index) {
            return value[index];
          },
        ),
      ),
    );
  }
}
