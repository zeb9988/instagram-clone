import 'package:flutter/material.dart';
import 'package:insta_flutter/utils/dimension.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget webscreenlayout;
  final Widget mobilescreenlayout;
  const ResponsiveLayout(
      {super.key,
      required this.webscreenlayout,
      required this.mobilescreenlayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webscreen) {
          return webscreenlayout;
        }
        return mobilescreenlayout;
      },
    );
  }
}
