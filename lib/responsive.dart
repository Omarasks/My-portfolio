import 'package:flutter/material.dart';
import 'breakpoints.dart';
import 'package:data_analyst_portfolio/mobile_home_page.dart';
import 'package:data_analyst_portfolio/tablet_home_page.dart';
import 'package:data_analyst_portfolio/desktop_home_page.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    required this.mobile,
    required this.tablet,
    required this.desktop,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= BreakPoints.desktop) {
          return Desktophomepage();
        } else if (constraints.maxWidth >= BreakPoints.tablet) {
          return Tablethomepage();
        } else {
          return Mobilehomepage();
        }
      },
    );
  }
}
