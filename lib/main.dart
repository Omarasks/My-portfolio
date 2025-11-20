import 'package:data_analyst_portfolio/desktop_home_page.dart';
import 'package:data_analyst_portfolio/mobile_home_page.dart';
import 'package:data_analyst_portfolio/responsive.dart';
import 'package:data_analyst_portfolio/tablet_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:data_analyst_portfolio/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.oxygen(
            fontSize: 56,
            fontWeight: FontWeight.bold,
            height: 1.0,
            color: Colors.black,
          ),
          bodyMedium: GoogleFonts.oxygen(fontSize: 20, color: textColor),
          bodySmall: GoogleFonts.roboto(fontSize: 14),
          titleSmall: GoogleFonts.oxygen(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            height: 1.0,
            color: Colors.black,
          ),
        ),
      ),
      home: Responsive(
        mobile: Mobilehomepage(),
        tablet: Tablethomepage(),
        desktop: Desktophomepage(),
      ),
    );
  }
}
