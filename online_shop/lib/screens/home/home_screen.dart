import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  get SvgPicture => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builAppBar(),
      body: const Body(),
    );
  }

//bar to back search and shop
  AppBar builAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Image.asset(
              "assets/images/search.png",
              width: 20,
            ),
            //icon: const Icon(Icons.message),
            color: kTextColor,
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              "assets/images/cart.png",
              width: 20,
            ),
            color: kTextColor,
            onPressed: () {},
          ),
          const SizedBox(width: kDefaulPaddin / 2)
        ]);
  }
}
