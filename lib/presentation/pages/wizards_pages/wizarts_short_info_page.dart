import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/internal/constants/colors.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/valid_name.dart';

class WizartsShortInfoView extends StatelessWidget {
  final WizardDto value;
  const WizartsShortInfoView({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: elevationAll,
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ValidFirstNameWidget(value: value.firstName ?? ''),
            const SizedBox(height: 5),
            Text(
              value.lastName ?? '',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
    );
  }
}
