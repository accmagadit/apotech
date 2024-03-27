import 'package:apotech/app.dart';
import 'package:apotech/checkout.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:apotech/widgets/cart/widget_cart.dart';
import 'package:apotech/widgets/cart/widget_payment_summary.dart';
import 'package:flutter/material.dart';


class Cart extends StatefulWidget {
  static const routename = '/cart';
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Your Cart',
            style: TextStyle(fontFamily: 'Overpass-bold'),
            textAlign: TextAlign.start,
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 Items in your cart',
                      style: TextStyle(
                        fontFamily: 'SofiaPro',
                        color: const Color(0xff090F47).withOpacity(0.45),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppHome.routename);
                      },
                      child: const Text(
                        '+ Add More',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontFamily: 'SofiaPro', color: Color(0xff4157FF)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                cart(
                    'bottle_1', 'Sugar free gold', 'bottle of 500 pellets', 25),
                const SizedBox(
                  height: 20,
                ),
                cart(
                    'bottle_2', 'Sugar free gold', 'bottle of 500 pellets', 18),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(0.25)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/cart/discount.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              '1 Coupon applied',
                              style: TextStyle(
                                  fontFamily: 'Overpass-bold',
                                  color: Color(0xff27AE60)),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.cancel_outlined,
                          size: 30,
                          color: Colors.black.withOpacity(0.25),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Payment Summary',
                  style: TextStyle(fontFamily: 'Overpass-bold'),
                ),
                const SizedBox(
                  height: 10,
                ),
                paymentSummary('Order Total', 'Rp 228.800'),
                paymentSummary('Item Discount', '-Rp 28.800'),
                paymentSummary('Order Total', '-Rp 15.800'),
                paymentSummary('Order Total', 'Free'),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  width: 400,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color:
                                  const Color(0xff000000).withOpacity(0.05)))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total',
                        style: TextStyle(
                          fontFamily: 'Overpass-regular',
                          color: Color(0xff090F47),
                        ),
                      ),
                      Text(
                        'Rp 185.000',
                        style: TextStyle(
                          fontFamily: 'Overpass-bold',
                          color: Color(0xff090F47),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Checkout.routename);
                    },
                    child: blueButton('Place Order @ Rp 185.000')),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
