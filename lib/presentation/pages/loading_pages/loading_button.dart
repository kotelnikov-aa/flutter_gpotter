import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../internal/constants/Colors.dart';

class LoadingButton extends StatelessWidget {
  const LoadingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: primaryColorLight,
      highlightColor: secondaryColorLight,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: secondaryColorLight,
            borderRadius: BorderRadius.circular(borderradiusCard),
          ),
          width: MediaQuery.of(context).size.width - 10.0,
          height: 40,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
