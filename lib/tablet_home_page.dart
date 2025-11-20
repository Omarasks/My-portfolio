import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/sections/tablet/hero_tablet.dart';

class Tablethomepage extends StatelessWidget {
  const Tablethomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return _tabletHomePage();
  }
}

Widget _tabletHomePage() {
  return Scaffold(
    appBar: AppBar(
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode_rounded)),
      ],
    ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [HeroTablet()],
        ),
      ),
    ),
  );
}
