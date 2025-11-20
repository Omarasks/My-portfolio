import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroDesktop extends StatelessWidget {
  const HeroDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(20),
      height: 400,
      width: double.infinity,
      decoration: BoxDecoration(
        color: heroColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: Image.asset("assets/images/hero_image.png"),
          ),

          const SizedBox(width: 32),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Farouq Aremu",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  "Cloud Analytics \nEngineer.",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  "4+ years in Analytics, I transform complex data into clear, actionable insights. My portfolio showcases projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, Microsoft Excel, Databricks, Power BI. Through compelling visualizations and data-driven recommendations, I empower businesses to make smarter decisions and achieve their strategic goals.",
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: 300,
                      height: 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor,
                          padding: EdgeInsets.all(20),
                        ),
                        onPressed: () {},
                        child: Text(
                          "📩 Download Cv",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        onPressed: () {},
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.github,
                            size: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Button for github and download resume
              ],
            ),
          ),
        ],
      ),
    );
  }
}
