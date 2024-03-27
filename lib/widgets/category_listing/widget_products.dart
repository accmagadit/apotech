import 'package:flutter/material.dart';

Widget products(String gambar, String barang, int harga) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      border: Border.all(color: const Color(0xffEBEBEB))
    ),
    height: 300,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/category_listing/all_products/$gambar.png',
          height: 180,
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(barang,
              style: const TextStyle(fontFamily: 'Overpass-regular', fontSize: 15)),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: SizedBox(
            width: 168,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rp $harga.000',
                  style: const TextStyle(
                      fontFamily: 'Overpass-bold', color: Color(0xff090F47)),
                ),
                Container(
                  decoration: const BoxDecoration(
                      color: Color(0xffFFC000),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                  width: 50,
                  height: 20,
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.star, size: 15, color: Colors.white),
                      Text(
                        '4.2',
                        style: TextStyle(color: Colors.white,fontFamily: 'SofiaPro'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}
