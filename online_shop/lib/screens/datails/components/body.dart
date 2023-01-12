// ignore_for_file: deprecated_member_use

import 'package:online_shop/models/product.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'add_to_cart.dart';
//import 'cart_counter.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  //widget con color, precio, tamaño descripcion del producto
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      SizedBox(
          height: size.height,
          child: Stack(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  //height: 500,
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaulPaddin,
                    right: kDefaulPaddin,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(children: <Widget>[
                    ColorAndSize(product: product),
                    const SizedBox(height: kDefaulPaddin / 2),
                    Description(product: product),
                    const SizedBox(height: kDefaulPaddin / 2),
                    const CounterWithFavBtn(),
                    const SizedBox(height: kDefaulPaddin / 2),
                    AddToCart(product: product)
                  ])),
              ProductTitleWithImage(product: product)
            ],
          ))
    ]));
  }
}
