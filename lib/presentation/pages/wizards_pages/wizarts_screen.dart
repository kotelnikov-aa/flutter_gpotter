import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_card_screen.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/wizarts_short_info_page.dart';
import '../../../internal/enums.dart';

class WizartsScreen extends StatelessWidget {
  final List<WizardDto> wizarts;

  const WizartsScreen({
    Key? key,
    required this.wizarts,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if (StatusSettings.change.sortingListStatus == true) {
      wizarts.sort((a, b) => a.firstName!.compareTo(b.firstName!));
    }
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: wizarts.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WizartsCardScreen(wizarts: wizarts[i]),
            ),
          );
        },
        child: WizartsShortInfoView(value: wizarts[i]),
      ),
    );
  }
}
