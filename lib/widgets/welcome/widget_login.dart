import 'package:flutter/material.dart';

Widget login(String mediaSosial) {
  return Container(
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: Colors.black.withOpacity(0.1))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          'assets/login/logo_$mediaSosial.png',
          height: 40,
          width: 40,
        ),
        Text('CONTINUE WITH $mediaSosial'),
        const SizedBox(),
        const SizedBox(),
      ],
    ),
  );
}
