import 'package:online_shop/constants.dart';
import 'package:online_shop/models/product.dart';
import 'package:online_shop/screens/datails/datails_screen.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaulPaddin),
            child: Text(
              'Women',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Categories(),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaulPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: kDefaulPaddin,
                crossAxisSpacing: kDefaulPaddin,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                        //press: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsScreen(product: products[index]
                      ),
                    )),
              ),
            ),
          ))
        ]);
  }
}
