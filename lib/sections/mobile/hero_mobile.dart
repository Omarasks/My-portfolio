import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/constants.dart';

class HeroMobile extends StatelessWidget {
  const HeroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(30),
            width: double.infinity,
            height: 500,
            decoration: BoxDecoration(
              color: heroPrimaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: Image.asset(
                "assets/images/hero_image.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 36),
          Text("Farouq Aremu", style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 8),
          Text(
            "Analytics\nEngineer.",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Text(
            "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, Microsoft Excel, Databricks, Power BI. Through compelling visualizations and data-driven recommendations, I empower businesses to make smarter decisions and achieve their strategic goals.",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}



/** 
 * 
 * Container(
      width: 361,
      height: 361,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: heroPrimaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/images/hero_image.png"),
            ),
          ),
          const SizedBox(height: 36),
          Text("Farouq Aremu"),
          const SizedBox(height: 12),
          Text("Data Engineer."),
          const SizedBox(height: 8),
          Text(
            "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, Microsoft Excel, Databricks, Power BI. Through compelling visualizations and data-driven recommendations, I empower businesses to make smarter decisions and achieve their strategic goals.",
          ),
        ],
      ),
    );
 */