import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/constants.dart';

class HeroTablet extends StatelessWidget {
  const HeroTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 393,
      width: 744,
      decoration: BoxDecoration(
        color: heroPrimaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset("assets/images/hero_image.png"),
          ),

          const SizedBox(width: 24),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Farouq Aremu"),
                const SizedBox(height: 15),
                Text(
                  "Data Engineer",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 15),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text:
                            "As a business data analyst, I transform complex data into clear, actionable insights.",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text:
                            " My portfolio showcases projects where I have analyzed sales trends, customer behavior, and operational metrics ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text:
                            "Using SQL, Python, Microsoft Excel, Databricks, Power BI. Through compelling visualizations and data-driven recommendations. ",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      TextSpan(
                        text:
                            "I empower businesses to make smarter decisions and achieve their strategic goals.",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
