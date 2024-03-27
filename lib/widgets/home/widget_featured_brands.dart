import 'package:flutter/material.dart';

Widget featuredBrand(String logo, String judul) {
  return SizedBox(
    width: 100,
    child: Column(
      children: [
        Image.asset('assets/home/featured_brands/$logo.png'),
        Text(judul,textAlign: TextAlign.center,)
      ],
    ),
  );
}
