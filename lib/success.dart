import 'package:apotech/app.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:apotech/widgets/walkthrough/widget_walkthrough.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  static const routename = '/success';
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  int imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
          child: Column(
            children: [
              Expanded(
                child: walkthrought(
                    'assets/login/login_success.png',
                    'Thank You',
                    'Your Order will be delivered with invoice \n#INV20231212. You can track the delivery\nin the order section.'),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context,AppHome.routename);
                  },
                  child: blueButton('CONTINUE ORDER'),)
            ],
          ),
        ),
      ),
    );
  }
}
