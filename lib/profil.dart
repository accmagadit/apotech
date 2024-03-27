import 'package:apotech/widgets/profile/widget_profile.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Profile',
            style: TextStyle(fontFamily: 'Overpass-bold'),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: const Color(0xffffffff),
                        width: 2,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xff090F47).withOpacity(0.12),
                          offset: const Offset(0, 6),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/profile/foto.png',
                      width: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi, Lorem Ipsum',
                        style:
                            TextStyle(fontFamily: 'Hanken-bold', fontSize: 24),
                      ),
                      Text(
                        'Welcome to Apotech',
                        style: TextStyle(
                            fontFamily: 'Hanken-regular',
                            fontSize: 14,
                            color: const Color(0xff091C3F).withOpacity(0.45)),
                      ),
                    ],
                  ),
                ],
              ),
              menuProfil('private', 'Private Account'),
              menuProfil('billing', 'My Consults'),
              menuProfil('orders', 'My orders'),
              menuProfil('billing', 'Billing'),
              menuProfil('faq', 'Faq'),
              menuProfil('settings', 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
