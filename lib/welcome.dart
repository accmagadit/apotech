import 'package:apotech/create_account.dart';
import 'package:apotech/login.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:apotech/widgets/welcome/widget_login.dart';
import 'package:apotech/widgets/walkthrough/widget_walkthrough.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  static const routname = '/welcome';
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  walkthrought('assets/login/welcome.png', 'Welcome to Apotech',
                      'Do you want some help with your \nhealth to get better life?'),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.routename);
                    },
                    child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, CreateAccount.routname);
                        },
                        child: blueButton('SIGN UP WITH EMAIL')),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  login('FACEBOOK'),
                  const SizedBox(
                    height: 5,
                  ),
                  login('GOOGLE'),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.routename);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: const Color(0xff090F47).withOpacity(0.45),
                          fontFamily: 'Overpass-regular'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
