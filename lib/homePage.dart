import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Column(
            children: [
              sectionOne(),
              sectionTwo(),
              sectionThree(),
              sectionFour(),
              sectionFive(),
            ],
          ),
        ),
      ),
    );
  }
}

sectionOne() {
  return SizedBox(
    child: Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 52,
            backgroundImage: AssetImage("assets/images/profile pic.jpg"),
          ),
          Text(
            "Farouq Aremu",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Text("Data Analytics Engineer || Business Intelligence "),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on, size: 16),
              SizedBox(width: 2),
              Text("Remote"),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.github),
              ),
              SizedBox(width: 5),
              IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.linkedin),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases \n projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, \n Microsoft Excel, Databricks, Power BI.  Through compelling visualizations and data-driven recommendations, I \n empower businesses to make smarter decisions and achieve strategic goals using data.",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),

                child: Center(
                  child: Text(
                    "SQL",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 30,
                width: 57,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),

                child: Center(
                  child: Text(
                    "Python",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),

                child: Center(
                  child: Text(
                    "ETL",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 30,
                width: 95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),

                child: Center(
                  child: Text(
                    "Data Modeling",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),

                child: Center(
                  child: Text(
                    "dbt",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Container(
                height: 30,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black,
                ),

                child: Center(
                  child: Text(
                    "Airflow",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          IconButton(
            onPressed: () {},
            icon: Text("Download CV", style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    ),
  );
}

sectionTwo() {
  return Container(
    padding: EdgeInsets.all(30),
    margin: EdgeInsets.symmetric(vertical: 30),
    width: 900,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(17),
      color: Colors.black,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FaIcon(FontAwesomeIcons.gear, color: Colors.white),
            SizedBox(width: 8),
            Text("Technical Skills", style: TextStyle(color: Colors.white)),
          ],
        ),
        SizedBox(height: 8),
      ],
    ),
  );
}

sectionThree() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30),
    width: 980,
    height: 1500,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 45),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FaIcon(FontAwesomeIcons.listCheck),
              const SizedBox(width: 8),
              Text("Projects", style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 30,
            children: [
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          "assets/images/Cohort Analysis Retention.PNG",
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Customer Analytics",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "RFM Segmentation & Cohort Analysis",
                            style: TextStyle(fontSize: 18),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Text(
                              "Read more",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/images/powerbi.png"),
                      const SizedBox(height: 8),
                      Text(
                        "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python.",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/blank_image.png"),
                      Text("Customer Analytics"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Business Data Analyst",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Text(
                              "Read more",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/images/powerbi.png"),
                      Text(
                        "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases \n projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, \n Microsoft Excel, Databricks, Power BI.",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/blank_image.png"),
                      Text("Customer Analytics"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Business Data Analyst",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Text(
                              "Read more",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/images/powerbi.png"),
                      Text(
                        "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases \n projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, \n Microsoft Excel, Databricks, Power BI.",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/blank_image.png"),
                      Text("Customer Analytics"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Business Data Analyst",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Text(
                              "Read more",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/images/powerbi.png"),
                      Text(
                        "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases \n projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, \n Microsoft Excel, Databricks, Power BI.",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/blank_image.png"),
                      Text("Customer Analytics"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Business Data Analyst",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Text(
                              "Read more",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/images/powerbi.png"),
                      Text(
                        "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases \n projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, \n Microsoft Excel, Databricks, Power BI.",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/blank_image.png"),
                      Text("Customer Analytics"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Business Data Analyst",
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Text(
                              "Read more",
                              style: TextStyle(color: Colors.blueAccent),
                            ),
                          ),
                        ],
                      ),
                      Image.asset("assets/images/powerbi.png"),
                      Text(
                        "As a business data analyst, I transform complex data into clear, actionable insights. My portfolio showcases \n projects where I have analyzed sales trends, customer behavior, and operational metrics using SQL, Python, \n Microsoft Excel, Databricks, Power BI.",
                        textAlign: TextAlign.start,
                        maxLines: 4,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

sectionFour() {
  return Container(
    width: 900,
    height: 300,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // experience column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                children: [
                  Image.asset("assets/images/briefcase.png"),
                  const SizedBox(width: 12),
                  Text(
                    "Experience",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/images/syc 1.png"),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sycamore Investment & Asset Mgmt",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text("Investment Research Associate (Full-time, 2024)"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/Equiserve 1.png"),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cowry Asset Management",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text('Data Analyst Associate (Full-time, 2022 - 2024)'),
                  ],
                ),
              ],
            ),
          ],
        ),
        // Education column
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Row(
                children: [
                  Image.asset("assets/images/education.png"),
                  const SizedBox(width: 8),
                  Text(
                    "Education",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                children: [
                  Image.asset("assets/images/mckinsey (1).png"),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "McKinsey Forward Program",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      Text("Problem solving and Data Transformation Workshop"),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/xai.png"),
                const SizedBox(width: 30),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Kharkiv Aviation University KhAI",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    Text(
                      "Aerospace Mechanical Engineering (2015 - 2019) \nBachelors Degree, Cumulative GPA (4.00/5.00 )",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}

sectionFive() {
  return Container(
    width: double.infinity,
    height: 400,
    decoration: BoxDecoration(color: Colors.black),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Say Hello 🖐 \nLets Connect on an insightful \n Data Journey.",
          style: TextStyle(fontSize: 32, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset("assets/images/whatsapp.png"),
                const SizedBox(width: 8),
                Text("+2348028168991", style: TextStyle(color: Colors.white)),
              ],
            ),
            const SizedBox(width: 12),
            Row(
              children: [
                Image.asset("assets/images/linkedin.png"),
                const SizedBox(width: 8),
                Text(
                  "linkedin.com/in/farouq-aremu",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(width: 12),
            Row(
              children: [
                Image.asset("assets/images/gmail.png"),
                const SizedBox(width: 8),
                Text(
                  "askomarfarouq@gmail.com",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}





/***
 * Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: 416,
                  height: 200,
                  decoration: BoxDecoration(
                    color: heroColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Programming Language",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 55),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset("assets/images/sql.png"),
                              const SizedBox(height: 8),
                              Text(
                                "SQL",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/images/python.png"),
                              const SizedBox(height: 8),
                              Text(
                                "Python",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/images/colab.png"),
                              const SizedBox(height: 4),
                              Text(
                                "Colab",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset("assets/images/pandas.png"),
                              const SizedBox(height: 8),
                              Text(
                                "Pandas",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: 416,
                  height: 200,
                  decoration: BoxDecoration(
                    color: heroColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Data Analytic tools",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Image.asset("assets/images/data-graph.png"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset("assets/images/vscode.png"),
                              const SizedBox(height: 4),
                              Text(
                                "Vscode",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Image.asset("assets/images/powerbi.png"),
                              const SizedBox(height: 4),
                              Text(
                                "PowerBI",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Image.asset("assets/images/excel.png"),
                              const SizedBox(height: 4),
                              Text(
                                "Excel",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),

                          Column(
                            children: [
                              Image.asset("assets/images/powerpoint.png"),
                              const SizedBox(height: 4),
                              Text(
                                "PowerPoint",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  width: 416,
                  height: 408,
                  decoration: BoxDecoration(
                    color: heroColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Data Analytic Methods",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Image.asset("assets/images/pie.png"),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "- Exploratory Data Analysis (EDA)",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "- Segmentation / Clustering",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "- Cohort Analysis",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "- Linear Regression",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "- Logistic Regression",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                          Text(
                            "- Statistics",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            "- Xlookup & Vlookup",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
 */