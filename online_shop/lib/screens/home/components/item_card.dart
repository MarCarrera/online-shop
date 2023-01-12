import 'package:online_shop/models/product.dart';
//import 'package:dating_app/screens/datails/datails_screen.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

// ignore: camel_case_types
class ItemCard extends StatelessWidget {
  final Product product;
  final Function() press;

  const ItemCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //navegar
      onTap: press,
      /* onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const DetailsScreen()),
        );
      },*/

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
                padding: const EdgeInsets.all(kDefaulPaddin),
                //utlizadas solo para el demo
                /*height: 180,
                width: 160,*/
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Hero(
                    tag: "${product.id}", child: Image.asset(product.image))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaulPaddin / 4),
            //product is out demo list
            child: Text(
              product.title,
              style: const TextStyle(color: kTextColor),
            ),
          ),
          Text(
            '\$${product.price}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
