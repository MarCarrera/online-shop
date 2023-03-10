import 'package:online_shop/models/product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaulPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(product.categorie, style: const TextStyle(color: Colors.white)),
          Text(product.title,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
          const SizedBox(height: kDefaulPaddin / 6),
          Row(children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  const TextSpan(text: "Price\n"),
                  TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(width: kDefaulPaddin),
            Expanded(
                child: Hero(
              tag: "${product.id}",
              child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ),
            ))
          ])
        ],
      ),
    );
  }
}
