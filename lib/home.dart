import 'package:apotech/cart.dart';
import 'package:apotech/category_listing.dart';
import 'package:apotech/widgets/home/widget_deals_of_the_day.dart';
import 'package:apotech/widgets/home/widget_featured_brands.dart';
import 'package:apotech/widgets/home/widget_top_categories.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const routname = '/home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int imageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Map<String, String> topCategories = {
      'Dental': 'dental.png',
      'Wellness': "wellness.png",
      'Homeo': 'homeo.png',
      'Eye Care': 'eye_care.png',
      'Skin & Hair': 'skin_hair.png'
    };

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                'assets/home/background.png',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white,
                                  width:
                                      2.0, // Sesuaikan ketebalan border sesuai kebutuhan
                                ),
                              ),
                              child: Image.asset('assets/home/profile.png',
                                  width: 40),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/home/logo_notification.png',
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Cart.routename);
                                    },
                                    child: Image.asset(
                                        'assets/home/logo_cart.png')),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hi, Lorem',
                                style: TextStyle(
                                    fontFamily: 'Overpass-Bold',
                                    color: Colors.white,
                                    fontSize: 30),
                              ),
                              Text(
                                'Welcome to Apotech',
                                style: TextStyle(
                                    fontFamily: 'Overpass-Light',
                                    color: Colors.white,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 10,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            // Gunakan controller pada TextField
                            decoration: InputDecoration(
                              hintText: 'Search Medicide & Healthcare products',
                              hintStyle: TextStyle(
                                fontFamily: 'Overpass-Regular',
                                color:
                                    const Color(0xff090F47).withOpacity(0.45),
                              ),
                              border: InputBorder.none,
                              prefixIcon: const Icon(Icons.search),
                              prefixStyle: TextStyle(
                                fontFamily: 'Overpass-Regular',
                                color:
                                    const Color(0xff090F47).withOpacity(0.45),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          'Top Categories',
                          style: TextStyle(
                              fontFamily: 'Overpass-Bold',
                              color: Color(0xff090F47)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 125,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: topCategories.entries.map((entry) {
                          String logo = entry.value;
                          String tulisan = entry.key;
                          return Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: topCategoriess(logo, tulisan),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      SizedBox(
                        height: 155,
                        child: PageView(
                          onPageChanged: (index) {
                            setState(() {
                              imageIndex = index;
                            });
                          },
                          children: [
                            Image.asset('assets/home/promotion.png'),
                            Image.asset('assets/home/promotion.png'),
                            Image.asset('assets/home/promotion.png'),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: SizedBox(
                          height: 30,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < 3; i++)
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: 5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: i == imageIndex
                                          ? const Color(0xff4157FF)
                                          : const Color(0xffC4C4C4),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Deals of the Day',
                          style: TextStyle(fontFamily: 'Overpass-Bold'),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, CategoryListing.routename);
                          },
                          child: const Text(
                            'More',
                            style: TextStyle(
                                fontFamily: 'Overpass-Regular',
                                color: Color(0xff006AFF)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 255,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          dealsOfTheDay(
                            'bottle_1',
                            'Accu-check Active\nTest Strip',
                            112,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          dealsOfTheDay(
                            'bottle_2',
                            'Omron HEM-8712\nBP Monitor',
                            150,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          dealsOfTheDay(
                            'bottle_1',
                            'Accu-check Active\nTest Strip',
                            112,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Text(
                          'Featured Brands',
                          style: TextStyle(fontFamily: 'Overpass-Bold'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: SizedBox(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          featuredBrand('himalaya', 'Himalaya Wellness'),
                          featuredBrand('accu_check', 'Accu-Chek'),
                          featuredBrand('vlcc', 'VLCC'),
                          featuredBrand('protinex', 'protinex'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
