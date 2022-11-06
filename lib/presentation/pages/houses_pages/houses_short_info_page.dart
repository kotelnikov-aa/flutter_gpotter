import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/text_my_head_body.dart';

class HousesShortInfoView extends StatelessWidget {
  final HouseDto value;
  const HousesShortInfoView({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(
            DataFromScreenSize.getCardPadding(getScreenSize(context).index)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextHeadline1(value: value.name ?? ''),
            const SizedBox(height: 5),
            TextBody1(value: 'Effect - ${value.commonRoom}'),
            const SizedBox(height: 5),
            TextBody1(value: value.ghost.toString()),
          ],
        ),
      ),
    );
  }
}
