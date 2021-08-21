import 'package:flutter/material.dart';
import 'package:project1/Models/catalog.dart';
import 'package:project1/Widget/home_widgets/add_to_cart.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  const HomeDetailsPage({Key? key, required this.catalog}) : super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
            buttonPadding: EdgeInsets.zero,
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalog.price}".text.bold.xl4.red800.make(),
              AddToCart(
                catalog: catalog,
                key: null,
              ).wh(120, 50)
            ]).p32(),
      ),
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                      tag: Key(catalog.id.toString()),
                      child: Image.network(catalog.image))
                  .h32(context),
              Expanded(
                  child: VxArc(
                      height: 30.0,
                      arcType: VxArcType.CONVEY,
                      edge: VxEdge.TOP,
                      child: Container(
                        width: context.screenWidth,
                        color: context.cardColor,
                        child: Column(
                          children: [
                            catalog.name.text.xl4
                                .color(context.accentColor)
                                .bold
                                .make(),
                            catalog.desc.text.xl.make(),
                            "Labore kasd aliquyam ut dolor justo. Ut duo est sit takimata ea dolore, gubergren et duo stet consetetur vero gubergren justo et at. Consetetur ipsum rebum dolor accusam et eirmod et. Stet lorem elitr labore et lorem duo ipsum vero sed. Ipsum dolor diam stet kasd justo. Ipsum sanctus lorem."
                                .text
                                .heightSnug
                                .hairLine
                                .base
                                .make()
                                .p16()
                          ],
                        ).py64(),
                      )))
            ],
          )),
    );
  }
}
