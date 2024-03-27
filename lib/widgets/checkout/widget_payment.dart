import 'package:flutter/material.dart';

class PaymentWidget extends StatefulWidget {
  final String logo;
  final String judul;
  final bool isSelected;
  final VoidCallback onSelected;

  const PaymentWidget({
    Key? key,
    required this.logo,
    required this.judul,
    required this.isSelected,
    required this.onSelected,
  }) : super(key: key);

  @override
  _PaymentWidgetState createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff090F47).withOpacity(0.1),
                ),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset('assets/checkout/logo_${widget.logo}.png'),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              widget.judul,
              style: const TextStyle(
                fontFamily: 'Overpass-bold',
                color: Color(0xff090F47),
              ),
            )
          ],
        ),
        Radio(
          value: widget.judul,
          activeColor: const Color(0xff4157FF),
          groupValue: widget.isSelected ? widget.judul : null,
          onChanged: (value) {
            widget.onSelected();
          },
        ),
      ],
    );
  }
}
