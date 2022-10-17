import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/potter_button.dart';

import '../../../internal/share_screen.dart';
import '../favorite_button.dart';
import 'houses_detail_info_page.dart';

class HousesCardScreen extends StatelessWidget {
  final HouseDto houses;
  const HousesCardScreen({Key? key, required this.houses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HousesDetailInfoView(houses: houses),
          FaviriteButtonChange(value: houses),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShareScreen(
                      text: houses.name!, subject: houses.commonRoom!),
                ),
              );
            },
            child: const BottonPotter(value: 'send info'),
          ),
          GestureDetector(
            child: const BottonPotter(value: 'back'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
