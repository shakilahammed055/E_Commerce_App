import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  final double fontSize;

  const AppNameTextWidget({super.key, this.fontSize = 25});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: TitleTextWidget(
        label: "Dream Shop",
        fontSize: fontSize,
      ),
      baseColor: Colors.purple,
      highlightColor: Colors.red,
    );
  }
}
