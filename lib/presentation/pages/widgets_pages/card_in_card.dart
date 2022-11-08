import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_sizes.dart';
import 'package:flutter_gpotter/main.dart';

class CardInCard extends StatelessWidget {
  const CardInCard({super.key, required this.value});
  final List<Widget> value;
  @override
  Widget build(BuildContext context) {
    final padding =
        DataFromScreenSize.cardPadding[getScreenSize(context).index];
    return Card(
      color: Theme.of(context).cardTheme.shadowColor,
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: ListView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.all(padding),
          itemCount: value.length,
          itemBuilder: (BuildContext context, int index) {
            return value[index];
          },
        ),
      ),
    );
  }
}
