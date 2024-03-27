import 'package:flutter/material.dart';

Widget diabeticDiet(String gambar, String barang) {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      color: Color(0xffF5F7FA),
    ),
    width: 100,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/category_listing/diabetic_diet/$gambar.png',
          height: 92,
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(barang,
              style: const TextStyle(
                  fontFamily: 'Overpass-regular', fontSize: 15)),
        ),
      ],
    ),
  );
}
