import 'package:flutter/material.dart';
import 'package:project1/Pages/home_page.dart';
import 'package:project1/Pages/Login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project1/Utils/MyRoutes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => new LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
