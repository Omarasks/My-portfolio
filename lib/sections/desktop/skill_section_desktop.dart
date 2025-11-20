import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/constants.dart';

class SkillSectionDesktop extends StatelessWidget {
  const SkillSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              width: 420,
              height: 335,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: heroPrimaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Programming Languages:",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset("assets/images/sql.png"),
                      ),
                      const SizedBox(width: 6),
                      Text("SQL"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset("assets/images/python.png"),
                      ),
                      const SizedBox(width: 6),
                      Text("Python"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          "assets/images/HashiCorp Terraform.png",
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text("Terraform"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(25),
            width: 420,
            height: 335,
            decoration: BoxDecoration(
              color: heroPrimaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Data Analytics Stack:",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    SizedBox(
                      width: 36,
                      height: 36,
                      child: Image.asset("assets/images/Apache Airflow.png"),
                    ),
                    const SizedBox(width: 30),
                    Text("Airflow"),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Image.asset("assets/images/Dbt.png"),
                    ),
                    const SizedBox(width: 30),
                    Text("Dbt"),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  // TODO change image to snowflake
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Image.asset("assets/images/AWS.png"),
                    ),
                    const SizedBox(width: 30),
                    Text("AWS"),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Image.asset("assets/images/Google Cloud.png"),
                    ),
                    const SizedBox(width: 30),
                    Text("Google Cloud"),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    SizedBox(
                      width: 48,
                      height: 48,
                      child: Image.asset("assets/images/powerbi.png"),
                    ),
                    const SizedBox(width: 30),
                    Text("PowerBI"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: EdgeInsets.all(25),
            width: 440,
            height: 335,
            decoration: BoxDecoration(
              color: heroPrimaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Analytic Methods:",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const SizedBox(height: 25),
                Text(
                  "🎯 Data Engineering & Data Analysis",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  "🎯 ETL/ELT Data Pipeline Automation",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  "🎯 SQL Data Transformation",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  "🎯 DataWarehouse (Snowflake, Redshift)",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  "🎯 Dashboard Design & Visualization",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  "🎯 Cloud Architecture & Infra",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
