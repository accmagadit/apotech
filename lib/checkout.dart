import 'package:apotech/success.dart';
import 'package:apotech/widgets/checkout/widget_adress.dart';
import 'package:apotech/widgets/widget_blue_button.dart';
import 'package:apotech/widgets/checkout/widget_payment.dart';
import 'package:flutter/material.dart';


class Checkout extends StatefulWidget {
  static const routename = '/checkout';
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  String? selectedAddress = 'Home';
  String? selectedPayment = 'Credit card';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Checkout',
            style: TextStyle(fontFamily: 'Overpass-bold'),
            textAlign: TextAlign.start,
          ),
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 Items in your cart',
                      style: TextStyle(
                        fontFamily: 'SofiaPro',
                        color: const Color(0xff090F47).withOpacity(0.45),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'TOTAL',
                          style: TextStyle(
                            fontFamily: 'SofiaPro',
                            color: const Color(0xff090F47).withOpacity(0.45),
                          ),
                        ),
                        const Text(
                          'Rp 185.000',
                          textAlign: TextAlign.end,
                          style: TextStyle(fontFamily: 'Overpass-Bold'),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Delivery Address',
                  style: TextStyle(
                      fontFamily: 'Overpass-bold', color: Color(0xff090F47)),
                ),
                const SizedBox(
                  height: 20,
                ),
                AddressWidget(
                  tempat: 'Home',
                  noTelp: '(205) 555-024',
                  alamat: '1786 Wheeler Bridge',
                  isSelected: selectedAddress == 'Home',
                  onSelected: () {
                    setState(() {
                      selectedAddress = 'Home';
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                AddressWidget(
                  tempat: 'Office',
                  noTelp: '(205) 555-024',
                  alamat: '1786 Dallas St underfield',
                  isSelected: selectedAddress == 'Office',
                  onSelected: () {
                    setState(() {
                      selectedAddress = 'Office';
                    });
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        '+ Add Address',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontFamily: 'SofiaPro', color: Color(0xff4157FF)),
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Payment method',
                  style: TextStyle(
                      fontFamily: 'Overpass-Bold', color: Color(0xff090F47)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: const Color(0xff090F47).withOpacity(0.1),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, right: 20, left: 20),
                      child: Column(
                        children: [
                          PaymentWidget(
                            logo: 'credit',
                            judul: 'Credit card',
                            isSelected: selectedPayment == 'Credit card',
                            onSelected: () {
                              setState(() {
                                selectedPayment = 'Credit card';
                              });
                            },
                          ),
                          const SizedBox(height: 10),
                          PaymentWidget(
                            logo: 'paypal',
                            judul: 'Paypal',
                            isSelected: selectedPayment == 'Paypal',
                            onSelected: () {
                              setState(() {
                                selectedPayment = 'Paypal';
                              });
                            },
                          ),
                          const SizedBox(height: 10),
                          PaymentWidget(
                            logo: 'google',
                            judul: 'Google Pay',
                            isSelected: selectedPayment == 'Google Pay',
                            onSelected: () {
                              setState(() {
                                selectedPayment = 'Google Pay';
                              });
                            },
                          ),
                          const SizedBox(height: 10),
                          PaymentWidget(
                            logo: 'apple',
                            judul: 'Apple Pay',
                            isSelected: selectedPayment == 'Apple Pay',
                            onSelected: () {
                              setState(() {
                                selectedPayment = 'Apple Pay';
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Success.routename);
                    },
                    child: blueButton('Pay Now Rp 185.000')),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
