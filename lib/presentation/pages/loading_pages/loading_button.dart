import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:shimmer/shimmer.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: primaryColorLight,
      highlightColor: secondaryColorLight,
      child: Padding(
        padding: EdgeInsets.all(
            DataFromScreenSize.cardPadding[getScreenSize(context).index]),
        child: AspectRatio(
          aspectRatio: 12 / 1,
          child: Container(
            decoration: BoxDecoration(
              color: secondaryColorLight,
              borderRadius: BorderRadius.circular(
                  DataFromScreenSize.borderRarius[getScreenSize(context).index]),
            ),
            // width: MediaQuery.of(context).size.width - 10.0,
            // height: 40,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
