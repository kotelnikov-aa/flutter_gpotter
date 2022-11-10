import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/internal/constants/app_sizes.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:shimmer/shimmer.dart';
import 'get_shimer_colors.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    final shimerColorTheme = getShimesColor(context);
    return Shimmer.fromColors(
      baseColor: shimerColorTheme.first,
      highlightColor: shimerColorTheme.last,
      child: Padding(
        padding: EdgeInsets.all(
            DataFromScreenSize.cardPadding[getScreenSize(context).index]),
        child: AspectRatio(
          aspectRatio: 12 / 1,
          child: Container(
            decoration: BoxDecoration(
              color: secondaryColorLight,
              borderRadius: BorderRadius.circular(DataFromScreenSize
                  .borderRarius[getScreenSize(context).index]),
            ),
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
