import 'package:online_shop/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaulPaddin),
      child: Row(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(right: kDefaulPaddin),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(color: product.color),
              ),
              child: IconButton(
                icon: Image.asset("assets/images/add-to-cart.png", width: 20),
                color: product.color,
                onPressed: () {},
              )),
          Expanded(
            child: SizedBox(
              height: 50,
              // ignore: deprecated_member_use
              child: FloatingActionButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                backgroundColor: product.color,
                onPressed: () {},
                child: Text("Buy Now".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
