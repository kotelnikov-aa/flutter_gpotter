import 'package:flutter/material.dart';
import 'package:flutter_gpotter/generated/swagger.swagger.dart';
import 'package:flutter_gpotter/presentation/pages/widgets_pages/text_my_head_body.dart';
import 'package:flutter_gpotter/presentation/pages/wizards_pages/valid_name.dart';

class WizartsShortInfoView extends StatelessWidget {
  final WizardDto value;
  const WizartsShortInfoView({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextHeadline1(value: validName(value.firstName ?? '')),
          TextHeadline1(value: value.lastName ?? ''),
        ],
      ),
    );
  }
}
