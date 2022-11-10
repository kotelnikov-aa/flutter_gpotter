import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../internal/theme/theme_state.dart';

List<Color> getShimesColor(BuildContext context) {
  final themeState = context.watch<ThemeState>();
  List<Color> result = [];
  // print(value);
  if (!themeState.isDark) {
    result.add(primaryColorLight);
    result.add(secondaryColorLight);
    //   print('111');
  } else {
    result.add(primaryColorDark);
    result.add(secondaryColorDark);
//    print('12333eq2');
  }
  return result;
}
