import 'package:flutter/material.dart';

Widget walkthrought(String image, String judul, String deskripsi) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset(image),
      const SizedBox(height: 20,),
      Text(
        judul,
        style: const TextStyle(fontFamily: 'Overpass-bold', fontSize: 25),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 10,),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          deskripsi,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Overpass-light',
            fontSize: 18,
            color: const Color(0xff090F47).withOpacity(0.45),
          ),
        ),
      ),
    ],
  );
}
