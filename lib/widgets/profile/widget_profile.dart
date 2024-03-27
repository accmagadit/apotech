import 'package:flutter/material.dart';

Widget menuProfil(String logo, String namaMenu) {
  return Row(
    children: [
      Image.asset('assets/profile/$logo.png'),
      const SizedBox(width: 20,),
      Container(
        width: 340,
        decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(color: const Color(0xff091C3F).withOpacity(0.08)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              namaMenu,
              style: const TextStyle(fontFamily: 'Hanken'),
            ),
            const SizedBox(height: 60,),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(Icons.arrow_forward_ios_rounded,size: 10,),
            )
          ],
        ),
      ),
    ],
  );
}
