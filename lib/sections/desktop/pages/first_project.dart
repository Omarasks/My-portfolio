import 'package:data_analyst_portfolio/sections/desktop/f_project_hero_section.dart';
import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/padding.dart';

class FirstProjectDesktop extends StatelessWidget {
  const FirstProjectDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("ETL Datawarehouse Project"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
            horizontal: ResponsivePadding.horizontal(context),
          ),
          child: Column(
            children: [ProjectHeroSection(), ProjectSummary(), ProjectCode()],
          ),
        ),
      ),
    );
  }
}
