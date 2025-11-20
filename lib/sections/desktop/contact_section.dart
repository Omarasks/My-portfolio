import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/constants.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      padding: EdgeInsets.all(25),
      width: double.infinity,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: heroColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "🖐 Say Hello,\nLets Connect on \nan insightful Data Journey.",
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/gmail.png"),
                  const SizedBox(width: 10),
                  Text(
                    "askomarfarouq@gmail.com",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              const SizedBox(width: 30),
              Row(
                children: [
                  Image.asset("assets/images/linkedin.png"),
                  const SizedBox(width: 10),
                  Text(
                    "linkedin.com/in/farouq-aremu",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
