import 'package:apotech/products_details.dart';
import 'package:apotech/widgets/category_listing/widget_diabetic_diet.dart';
import 'package:apotech/widgets/category_listing/widget_products.dart';
import 'package:flutter/material.dart';

class CategoryListing extends StatelessWidget {
  const CategoryListing({super.key});
  static const routename = '/category_listing';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Diabetes Care',
            textAlign: TextAlign.start,
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: SizedBox(
                  height: 155,
                  child: Image.asset('assets/home/promotion.png'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Diabetic Diet',
                      style: TextStyle(fontFamily: 'Overpass-Bold'),
                      textAlign: TextAlign.start,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 162,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      diabeticDiet(
                        'bottle_1',
                        'Sugar Substitute',
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      diabeticDiet(
                        'bottle_2',
                        'Juices &\nVinegars',
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      diabeticDiet(
                        'bottle_3',
                        'Vitamins\nMedicines',
                      ),
                      const SizedBox(
                        width: 25,
                      ),
                      diabeticDiet(
                        'bottle_3',
                        'Vitamins\nMedicines',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 25),
                child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'All Products',
                      style: TextStyle(fontFamily: 'Overpass-Bold'),
                      textAlign: TextAlign.start,
                    )),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(
                                context, ProductDetails.routename);
                          },
                          child: products(
                            'accu_check',
                            'Accu-check Active\nTest Strip',
                            112,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ProductDetails.routename);
                          },
                          child: products(
                            'omron_hem',
                            'Omron HEM-8712\nBP Monitor',
                            150,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, ProductDetails.routename);
                          },
                          child: products(
                            'accu_check_1',
                            'Accu-check Active\nTest Strip',
                            112,
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(
                                context, ProductDetails.routename);
                          },
                          child: products(
                            'omron_hem_1',
                            'Omron HEM-8712\nBP Monitor',
                            150,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
