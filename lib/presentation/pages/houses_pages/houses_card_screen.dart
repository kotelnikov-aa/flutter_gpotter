import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';

import 'houses_detail_info_page.dart';

class HousesCardScreen extends StatelessWidget {
  final HouseDto houses;
  const HousesCardScreen({Key? key, required this.houses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HousesDetailInfoView(houses: houses),
          TextButton(
            onPressed: () {
              // add to favorite,
            },
            child: const Text(
              'add to favorite',
            ),
          ),
          TextButton(
            onPressed: () {
              // sending
            },
            child: const Text(
              'sending',
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'back',
            ),
          ),
        ],
      ),
    );
  }
}
