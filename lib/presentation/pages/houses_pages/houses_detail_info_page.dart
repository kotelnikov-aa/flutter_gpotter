import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';

class HousesDetailInfoView extends StatelessWidget {
  final HouseDto houses;

  const HousesDetailInfoView({super.key, required this.houses});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(houses.name ?? ''),
          Text(houses.houseColours ?? ''),
        ],
      ),
    );
  }
}
