import 'package:flutter/material.dart';
import 'package:project1/Models/catalog.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({Key? key, required this.catalog}) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xfff5f3f5),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
            buttonPadding: EdgeInsets.zero,
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black87),
                          shape: MaterialStateProperty.all(StadiumBorder())),
                      child: "Buy".text.make())
                  .wh(100, 50)
            ]).p32(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                child: Image.network(catalog.image),
              ).h32(context),
              Expanded(
                  child: VxArc(
                      height: 30.0,
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      child: Container(
                        width: context.screenWidth,
                        color: Colors.white,
                        child: Column(
                          children: [
                            catalog.name.text.xl4.bold.make(),
                            catalog.desc.text.xl
                                .textStyle(context.captionStyle)
                                .make(),
                          ],
                        ).py64(),
                      )))
            ],
          )),
    );
  }
}
