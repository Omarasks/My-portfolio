import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/constants.dart';

class EducationExperience extends StatelessWidget {
  const EducationExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        color: heroSecondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Experience
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: heroColor,
                borderRadius: BorderRadius.circular(30),
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Work Experience",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/images/syc 1.png"),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sycamore Investment and Asset Management",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Investment Research Analyst",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ), 
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/images/Equiserve 1.png"),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cowry Asset Management",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Data Analyst",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 30),
          // Education
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: heroColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Education",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/images/mckinsey (1).png"),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "McKinsey Forward Program",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Problem solving & Data Transformation workshop",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  Row(
                    children: [
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset("assets/images/xai.png"),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kharkiv Aviation Institute",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Aerospace mechanical engineering (2019)\nBachelors Degree, Cumulative GPA (4.00/5.00)",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
