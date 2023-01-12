// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../constants.dart';

//widget for categories
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ['Hand bang', 'Jewellery', 'Footwear', 'Dresses'];
  //by default our first item will be selected
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaulPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaulPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:
                    selectedItemIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              //top padding , linea pequeña debajo de cada seccion
              margin: const EdgeInsets.only(top: kDefaulPaddin / 4),
              height: 2,
              width: 30,
              color: selectedItemIndex == index
                  ? Colors.black
                  : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
