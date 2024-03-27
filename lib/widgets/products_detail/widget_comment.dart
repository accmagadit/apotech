import 'package:flutter/material.dart';

Widget comment(String nama, String tanggal, double bintang, String tulisan) {
  return Container(
    height: 125,
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: const Color(0xff090F47).withOpacity(0.1),
        ),
      ),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              nama,
              style: const TextStyle(
                  fontFamily: 'Overpass-regular', color: Color(0xff090F47)),
            ),
            Text(
              tanggal,
              style: TextStyle(
                  fontFamily: 'Overpass-regular', color: const Color(0xff090F47).withOpacity(0.45)),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(
              Icons.star,
              color: Color(0xffFFC000),
            ),
            Text('$bintang',style: TextStyle(
                  fontFamily: 'Overpass-regular', color: const Color(0xff090F47).withOpacity(0.45)),),
          ],
        ),
        Text(tulisan,style: TextStyle(
                  fontFamily: 'Overpass-light', color: const Color(0xff090F47).withOpacity(0.45)),)
      ],
    ),
  );
}
