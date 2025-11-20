import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/sections/desktop/hero_desktop.dart';
import 'package:data_analyst_portfolio/padding.dart';
import 'package:data_analyst_portfolio/sections/desktop/skill_section_desktop.dart';
import 'package:data_analyst_portfolio/sections/desktop/project_section.dart';
import 'package:data_analyst_portfolio/sections/desktop/education_experience.dart';
import 'package:data_analyst_portfolio/sections/desktop/contact_section.dart';

class Desktophomepage extends StatelessWidget {
  const Desktophomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("🖐 Hi, Thanks for checking out my Data Portfolio."),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: ResponsivePadding.horizontal(context),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HeroDesktop(),
              SkillSectionDesktop(),
              ProjectSection(),
              EducationExperience(),
              ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}
