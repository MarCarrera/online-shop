import 'package:flutter/material.dart';

class Product {
  final String image, title, categorie, description;
  final int price, size, id;
  final Color color;

  Product(
      {required this.image,
      required this.categorie,
      required this.title,
      required this.description,
      required this.price,
      required this.size,
      required this.id,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      categorie: 'Categorie 01',
      title: 'Product 1',
      price: 250,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_1.png',
      color: const Color(0xff3d82ae)),
  Product(
      id: 2,
      categorie: 'Categorie 02',
      title: 'Product 2',
      price: 300,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_2.png',
      color: const Color(0xffA8704C)),
  Product(
      id: 3,
      categorie: 'Categorie 03',
      title: 'Product 3',
      price: 280,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_3.png',
      color: const Color(0xff8C7483)),
  Product(
      id: 4,
      categorie: 'Categorie 04',
      title: 'Product 4',
      price: 190,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_4.png',
      color: const Color(0xffFB7461)),
  Product(
      id: 5,
      categorie: 'Categorie 05',
      title: 'Product 5',
      price: 315,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_5.png',
      color: const Color(0xffFB547A)),
  Product(
      id: 6,
      categorie: 'Categorie 06',
      title: 'Product 6',
      price: 240,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_6.png',
      color: const Color(0xff8C7483)),
  Product(
      id: 7,
      categorie: 'Categorie 07',
      title: 'Product 7',
      price: 250,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_1.png',
      color: const Color(0xff3d82ae)),
  Product(
      id: 8,
      categorie: 'Categorie 08',
      title: 'Product 8',
      price: 300,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_2.png',
      color: const Color(0xffA8704C)),
  Product(
      id: 9,
      categorie: 'Categorie 09',
      title: 'Product 9',
      price: 280,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_3.png',
      color: const Color(0xff8C7483)),
  Product(
      id: 10,
      categorie: 'Categorie 10',
      title: 'Product 10',
      price: 190,
      size: 12,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ',
      image: 'assets/bags/bag_4.png',
      color: const Color(0xffFB7461))
];
