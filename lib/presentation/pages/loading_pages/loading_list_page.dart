import 'package:flutter/material.dart';
import 'package:flutter_gpotter/internal/constants/app_colors.dart';
import 'package:flutter_gpotter/internal/constants/app_sizes.dart';
import 'package:flutter_gpotter/main.dart';
import 'package:flutter_gpotter/presentation/pages/loading_pages/get_shimer_colors.dart';
import 'package:shimmer/shimmer.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final shimerColorTheme = getShimesColor(context);
    return Shimmer.fromColors(
      baseColor: shimerColorTheme.first,
      highlightColor: shimerColorTheme.last,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: AspectRatio(
            aspectRatio: 4 / 1,
            child: Container(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: (BorderRadius.circular(DataFromScreenSize
                    .borderRarius[getScreenSize(context).index])),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
