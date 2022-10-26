import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../internal/constants/colors.dart';

//!!!добавить тени
class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: primaryColorLight,
      highlightColor: secondaryColorLight,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (context, i) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(borderradiusCard),
            ),
          ),
        ),
      ),
    );
  }
}
