import 'package:apotech/home.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:apotech/widgets/walkthrough/widget_walkthrough.dart';
import 'package:flutter/material.dart';

class LoginSuccess extends StatefulWidget {
  static const routename = '/login_success';
  const LoginSuccess({super.key});

  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  int imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
          child: Column(
            children: [
              Expanded(
                child: walkthrought(
                    'assets/login/login_success.png',
                    'Phone Number Verified',
                    'Congratulations, your phone\nnumber has been verified. You can\nstart using the app'),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Home.routname);
                },
                child: blueButton('CONTINUE'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
