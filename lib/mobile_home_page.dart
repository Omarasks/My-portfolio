import 'package:flutter/material.dart';
import 'package:data_analyst_portfolio/sections/mobile/hero_mobile.dart';

class Mobilehomepage extends StatelessWidget {
  const Mobilehomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          //TODO
          /***
           * Add a dark mode feature during finishing stage of the project
           */
          onPressed: () {},
          icon: Icon(Icons.dark_mode_outlined, size: 32),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: Icon(Icons.menu_open_rounded, size: 32),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Menu")),
            ListTile(
              title: Text(
                "Data Stack",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              title: Text(
                "Projects",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              title: Text(
                "Experience",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              title: Text(
                "Education",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              title: Text(
                "Say Hello 🖐",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [HeroMobile()],
        ),
      ),
    );
  }
}
