import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/enums.dart';
import 'package:flutter_gpotter/presentation/pages/houses_pages/houses_short_info_page.dart';
import 'houses_card_screen.dart';

class HousesScreen extends StatelessWidget {
  final List<HouseDto> houses;

  const HousesScreen({
    Key? key,
    required this.houses,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (StatusSettings.change.sortingListStatus == true) {
      houses.sort((a, b) => a.name!.compareTo(b.name!));
    }
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: houses.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HousesCardScreen(houses: houses[i]),
            ),
          );
        },
        child: HousesShortInfoView(value: houses[i]),
      ),
    );
  }
}
