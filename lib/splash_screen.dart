import 'package:apotech/walkthrough.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const routename = 'splash_screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Walkthrough()),
      );
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          Image.asset(
            'assets/splash_screen/splash_screen_background.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/splash_screen/splash_screen_logo.png'),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  'Apotech',
                  style: TextStyle(
                      fontFamily: 'SofiaPro',
                      fontSize: 28,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
