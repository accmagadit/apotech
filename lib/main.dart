import 'package:apotech/app.dart';
import 'package:apotech/cart.dart';
import 'package:apotech/category_listing.dart';
import 'package:apotech/checkout.dart';
import 'package:apotech/create_account.dart';
import 'package:apotech/home.dart';
import 'package:apotech/login.dart';
import 'package:apotech/login_success.dart';
import 'package:apotech/products_details.dart';
import 'package:apotech/splash_screen.dart';
import 'package:apotech/success.dart';
import 'package:apotech/verify_otp.dart';
import 'package:apotech/welcome.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routename,
      routes: {
        SplashScreen.routename : (context) => const SplashScreen(),
        Welcome.routname: (context) => const Welcome(),
        LoginScreen.routename: (context) => const LoginScreen(),
        Home.routname: (context) => const Home(),
        CreateAccount.routname: (context) => const CreateAccount(),
        VerifyOtp.routname: (context) => const VerifyOtp(),
        LoginSuccess.routename: (context) => const LoginSuccess(),
        AppHome.routename: (context) => const AppHome(),
        CategoryListing.routename: (context) => const CategoryListing(),
        Cart.routename: (context) => const Cart(),
        Checkout.routename: (context) => const Checkout(),
        Success.routename: (context) => const Success(),
        ProductDetails.routename: (context) => const ProductDetails(),
      },
    );
  }
}
