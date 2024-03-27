import 'package:flutter/material.dart';

Widget cart(String gambar, String judul, String deskripsi, int harga) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
          bottom: BorderSide(color: const Color(0xff000000).withOpacity(0.05))),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset('assets/cart/$gambar.png'),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(judul, style: const TextStyle(fontFamily: 'Overpass-bold')),
                    Text(deskripsi, style:TextStyle(fontFamily: 'Overpass-regular', color: const Color(0xff090F47).withOpacity(0.45)),),
                    const SizedBox(height: 15),
                    Text('Rp $harga.000'),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.cancel_outlined,
                    color: const Color(0xff000000).withOpacity(0.25)),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xffF2F4FF),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.remove_circle_rounded, color: Color(0xffDFE3FF),size: 30,),
                      Text('1'),
                      Icon(Icons.add_circle_rounded, color: Color(0xffA0ABFF),size: 30,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20,)
      ],
    ),
  );
}
