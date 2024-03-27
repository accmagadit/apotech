import 'package:apotech/cart.dart';
import 'package:apotech/widgets/products_detail/widget_comment.dart';
import 'package:apotech/widgets/products_detail/widget_rating.dart';
import 'package:apotech/widgets/products_detail/widget_size.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ProductDetails());
}

class ProductDetails extends StatefulWidget {
  static const routename = '/product_details';
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int imageIndex = 0;
  int activeIndex = 0;

  void _onSizeTapped(int index) {
    setState(() {
      activeIndex = index;
    });
  }

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
          actions: [
            Row(
              children: [
                Image.asset('assets/product_details/notification.png'),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Cart.routename);
                  },
                  child: Image.asset('assets/product_details/cart.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 10, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sugar Free Gold Low Calories',
                      style:
                          TextStyle(fontFamily: 'Overpass-bold', fontSize: 22),
                    ),
                    Text('Etiam mollis metus non purus',
                        style: TextStyle(
                            fontFamily: 'Overpass-regular',
                            fontSize: 14,
                            color: const Color(0xff090F47).withOpacity(0.45))),
                    SizedBox(
                      height: 155,
                      child: PageView(
                        onPageChanged: (index) {
                          setState(() {
                            imageIndex = index;
                          });
                        },
                        children: [
                          Image.asset('assets/product_details/product.png'),
                          Image.asset('assets/product_details/product.png'),
                          Image.asset('assets/product_details/product.png'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Rp 56.000',
                              style: TextStyle(fontFamily: 'Overpass-bold'),
                            ),
                            Text(
                              'Etiam moilis',
                              style: TextStyle(
                                  fontFamily: 'Overpass-reguar',
                                  color: const Color(0xff090F47)
                                      .withOpacity(0.45)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset('assets/product_details/logo_add.png'),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Cart.routename);
                              },
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(Cart.routename);
                                },
                                child: Text(
                                  'Add to cart',
                                  style: TextStyle(
                                      fontFamily: 'Overpass-reguar',
                                      color: const Color(0xff006AFF)
                                          .withOpacity(0.45)),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 400,
                      height: 15,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: const Color(0xff000000).withOpacity(0.05),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Package size',
                      style: TextStyle(
                          color: Color(0xff090F47),
                          fontFamily: 'Overpass-bold'),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 68,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Size(
                            harga: '252.000',
                            jumlah: '500',
                            active: activeIndex == 0,
                            onTap: (isActive) => _onSizeTapped(0),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Size(
                            harga: '100.000',
                            jumlah: '500',
                            active: activeIndex == 1,
                            onTap: (isActive) => _onSizeTapped(1),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Size(
                            harga: '160.000',
                            jumlah: '500',
                            active: activeIndex == 2,
                            onTap: (isActive) => _onSizeTapped(2),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Product Details',
                      style: TextStyle(
                          color: Color(0xff090F47),
                          fontFamily: 'Overpass-bold'),
                    ),
                    Text(
                      'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                      style: TextStyle(
                          color: const Color(0xff090F47).withOpacity(0.45),
                          fontFamily: 'Overpass-light'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Rating and Reviews',
                      style: TextStyle(
                          color: Color(0xff090F47),
                          fontFamily: 'Overpass-bold'),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    '4.4',
                                    style: TextStyle(
                                        fontSize: 33,
                                        fontFamily: 'Overpass-bold'),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffFFC000),
                                  ),
                                ],
                              ),
                              Text('923 Ratings \nand 257 Reviews',
                                  style: TextStyle(
                                      fontFamily: 'Overpass-regular',
                                      color: const Color(0xff090F47)
                                          .withOpacity(0.45))),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: const Color(0xFF000000).withOpacity(0.1),
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            rating(5, 0.67),
                            rating(4, 0.2),
                            rating(3, 0.07),
                            rating(2, 0),
                            rating(1, 0.02),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Column(
                      children: [
                        comment('Lorem Hoffman', '05-oct 2023', 4.2,
                            'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas '),
                        const SizedBox(
                          height: 20,
                        ),
                        comment('Ben Ipsum', '05-oct 2023', 4.2,
                            'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas '),
                        const SizedBox(
                          height: 100,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 15,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Cart.routename);
                    },
                    child: blueButton('GO TO CART')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
