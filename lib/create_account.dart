import 'package:apotech/login.dart';
import 'package:apotech/verify_otp.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  static const routname = '/create_account';
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isPasswordVisible = false;
  TextEditingController passwordController = TextEditingController();

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
                  'Create your account',
                  style: TextStyle(fontFamily: 'Overpass-Bold', fontSize: 30),
                ),
                const SizedBox(
                  height: 40,
                ),
                TextField(
                  style: const TextStyle(fontFamily: 'Overpass-Regular'),
                  decoration: InputDecoration(
                    labelText: 'Your Name',
                    labelStyle: TextStyle(
                      fontFamily: 'Overpass-Light',
                      fontSize: 20,
                      color: const Color(0xff090F47).withOpacity(0.45),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  style: const TextStyle(fontFamily: 'Overpass-Regular'),
                  decoration: InputDecoration(
                    labelText: 'Mobile Number',
                    labelStyle: TextStyle(
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
                    hintText: 'Email',
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
                  controller: passwordController,
                  obscureText: isPasswordVisible,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 20,
                        color: const Color(0xff090F47).withOpacity(0.45)),
                    suffixIcon: IconButton(
                      icon: Icon(isPasswordVisible
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined),
                      color: const Color(0xff090F47).withOpacity(0.45),
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 60,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, VerifyOtp.routname);
                  },
                  child: blueButton('CREATE ACCOUNT'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 15,
                      color: const Color(0xff090F47).withOpacity(0.45),
                    ),
                    Text(
                      'Already have an account?',
                      style: TextStyle(
                        fontFamily: 'SofiaPro',
                        color: const Color(0xff090F47).withOpacity(0.45),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, LoginScreen.routename);
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'SofiaPro',
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
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
