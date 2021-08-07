import 'package:flutter/material.dart';
import 'package:project1/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    double days2 = 30.0;
    String name = "jatin";
    bool test = true;
    num value1 = 40;
    num value2 = 40.5;
    var name2 = "string";
    var val = 23;
    var decVal = 44.2;

    const pi = 3.14;

    return MaterialApp(
      home: HomePage(),
    );
  }
}
