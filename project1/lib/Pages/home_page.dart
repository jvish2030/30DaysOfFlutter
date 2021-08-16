import 'package:flutter/material.dart';
import 'package:project1/Models/catalog.dart';
import 'package:project1/Widget/drawer.dart';
import 'package:project1/Widget/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    int days = 30;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(item:dummyList[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
