import 'package:flutter/material.dart';

class AdaptiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  AdaptiveLayout({required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return mobileBody;
      // if (constraints.maxWidth < 600) {
      //   return mobileBody;
      // } else {
      //   return desktopBody;
      // }
    });
  }
}
