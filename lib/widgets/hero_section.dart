import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/responsive.dart';
import 'package:data_analyst_portfolio/sections/desktop/hero_desktop.dart';
import 'package:data_analyst_portfolio/sections/tablet/hero_tablet.dart';
import 'package:data_analyst_portfolio/sections/mobile/hero_mobile.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: HeroMobile(),
      tablet: HeroTablet(),
      desktop: HeroDesktop(),
    );
  }
}
