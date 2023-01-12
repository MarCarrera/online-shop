import 'package:online_shop/models/product.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: Image.asset(
            "assets/images/back.png",
            color: Colors.white,
            width: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/images/cart.png",
              color: Colors.white,
              width: 20,
            ),
            onPressed: () {},
          ),
          const SizedBox(width: kDefaulPaddin / 2)
        ]);
  }
}
