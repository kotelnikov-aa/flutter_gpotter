import 'package:flutter/material.dart';
import 'package:flutter_gpotter/presentation/pages/elixirs_pages/elixirs_short_info_page.dart';
import '../../../generated/swagger.swagger.dart';
import '../../../internal/enums.dart';
import 'elixirs_card_screen.dart';

class ElixirsScreen extends StatelessWidget {
  final List<ElixirDto> elixirs;

  const ElixirsScreen({
    Key? key,
    required this.elixirs,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (StatusSettings.change.sortingListStatus == true) {
      elixirs.sort((a, b) => a.name!.compareTo(b.name!));
    }
    // поиск подстроки
    if (StatusSettings.change.searchText.isNotEmpty) {
      elixirs.removeWhere(
          (item) => !item.name!.contains(StatusSettings.change.searchText));
    }
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: elixirs.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ElixirCardScreen(elixir: elixirs[i]),
            ),
          );
        },
        child: ElixirsShortInfoView(value: elixirs[i]),
      ),
    );
  }
}
