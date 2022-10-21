import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/spels_pages/spels_short_info_page.dart';

import '../../../generated/swagger.swagger.dart';
import '../../../internal/enums.dart';
import 'spels_card_screen.dart';

class SpelsScreen extends StatelessWidget {
  final List<SpellDto> spels;

  const SpelsScreen({
    Key? key,
    required this.spels,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (StatusSettings.change.sortingListStatus == true) {
      spels.sort((a, b) => a.name!.compareTo(b.name!));
    }
    // поиск подстроки
    if (StatusSettings.change.searchText.isNotEmpty) {
      spels.removeWhere((item) => !item.name!.contains(StatusSettings.change.searchText));
    }
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: spels.length,
      itemBuilder: (context, i) => GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SplelsCardScreen(spels: spels[i]),
              ),
            );
          },
          child: SpelsShortInfoView(
            value: spels[i],
          )),
    );
  }
}
