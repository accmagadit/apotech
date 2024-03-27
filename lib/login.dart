import 'package:apotech/app.dart';
import 'package:apotech/create_account.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const routename = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome Back!',
                  style: TextStyle(fontFamily: 'Overpass-Bold', fontSize: 30),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/login/username.png'),
                    hintText: 'Username',
                    hintStyle: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0xff090F47).withOpacity(0.45)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Image.asset('assets/login/password.png'),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: const Color(0xff090F47).withOpacity(0.45),
                    ),
                    suffixIcon: GestureDetector(
                      child: Text(
                        'Forgot?',
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color(0xff090F47).withOpacity(0.45)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AppHome.routename);
                  },
                  child: blueButton('LOGIN'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back_ios_new_rounded,
                        size: 15,
                        color: const Color(0xff090F47).withOpacity(0.45),
                        shadows: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(0, 4),
                              blurRadius: 4)
                        ]),
                    Text(
                      'Dont have an account?',
                      style: TextStyle(
                          fontFamily: 'SofiaPro',
                          color: const Color(0xff090F47).withOpacity(0.45),
                          shadows: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: const Offset(0, 4),
                                blurRadius: 4)
                          ]),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, CreateAccount.routname);
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              fontFamily: 'SofiaPro',
                              color: const Color(0xff090F47).withOpacity(0.45),
                              shadows: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    offset: const Offset(0, 4),
                                    blurRadius: 4)
                              ]),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
