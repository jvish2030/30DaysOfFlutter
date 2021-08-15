import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: Text("Welcome jatinVishwakarma to $days days of course!!"),
          ),
        ),
        drawer: Drawer(),
      ),
    );
  }
}
