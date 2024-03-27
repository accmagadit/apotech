import 'package:flutter/material.dart';
import 'package:apotech/welcome.dart';
import 'package:apotech/widgets/walkthrough/widget_walkthrough.dart';

class Walkthrough extends StatefulWidget {
  const Walkthrough({Key? key}) : super(key: key);

  @override
  State<Walkthrough> createState() => _WalkthroughState();
}

class _WalkthroughState extends State<Walkthrough> {
  late PageController _pageController;
  int imageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: imageIndex);
  }

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
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      imageIndex = index;
                    });
                  },
                  children: [
                    walkthrought(
                        'assets/walkthrough/walkthrough_1.png',
                        'View and buy \nMedicine online',
                        'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.'),
                    walkthrought(
                        'assets/walkthrough/walkthrough_2.png',
                        'Online medical & \nHealthcare',
                        'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.'),
                    walkthrought(
                        'assets/walkthrough/walkthrough_3.png',
                        'Get Delivery on time',
                        'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Welcome.routname);
                      },
                      child: Text(
                        'Skip',
                        style: TextStyle(
                            color: const Color(0xff090F47).withOpacity(0.45)),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 3; i++)
                            Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              color: i == imageIndex
                                  ? const Color(0xff4157FF)
                                  : const Color(0xffC4C4C4),
                              ),
                            ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (imageIndex < 2) {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease);
                        } else {
                          Navigator.pushNamed(context, Welcome.routname);
                        }
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                            color: Color(0xff4157FF),
                            fontFamily: 'Overpass-Bold'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
