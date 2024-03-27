import 'package:flutter/material.dart';

Widget rating(int angka, double persen) {
  return Row(
    children: [
      Row(
        children: [
          Text('$angka'),
          const Icon(
            Icons.star,
            color: Color(0xffFFC000),
          ),
        ],
      ),
      const SizedBox(
        width: 5,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 150,
          height: 5,
          child: LinearProgressIndicator(
            borderRadius: BorderRadius.circular(10),
            value:
                persen, // Sesuaikan dengan persentase progress yang diinginkan
            backgroundColor: const Color(0xFF000000).withOpacity(0.1),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF4157FF)),
          ),
        ),
      ),
      const SizedBox(
        width: 5,
      ),
      Text('${(persen * 100).toStringAsFixed(0)}%',
          style: TextStyle(
              fontFamily: 'Overpass-regular',
              color: const Color(0xff090F47).withOpacity(0.45),
              fontSize: 10))
    ],
  );
}
