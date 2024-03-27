import 'package:flutter/material.dart';

Widget blueButton(String text, {VoidCallback? onPressed}) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: const Color(0xff4157FF),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xffffffff),
            fontFamily: 'Overpass-Bold',
            fontSize: 18,
          ),
        ),
      ),
    ),
  );
}
