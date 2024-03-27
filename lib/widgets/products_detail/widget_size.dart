import 'package:flutter/material.dart';

class Size extends StatefulWidget {
  final String harga;
  final String jumlah;
  final bool active;
  final Function(bool) onTap;

  const Size({Key? key, required this.harga, required this.jumlah, required this.active, required this.onTap})
      : super(key: key);

  @override
  _SizeState createState() => _SizeState();
}

class _SizeState extends State<Size> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap(true); // Set the tapped widget to active
      },
      child: Container(
        width: 79,
        decoration: BoxDecoration(
          color: widget.active ? const Color(0xffFFA41B).withOpacity(0.05) : const Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(6),
          border: widget.active
              ? Border.all(
                  color: const Color(0xffFFA41B),
                  width: 1,
                )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Rp ${widget.harga}',
              style: TextStyle(
                color: widget.active ? const Color(0xffFFA41B) : const Color(0xff090F47),
                fontFamily: 'Overpass-bold',
                fontSize: 10,
              ),
            ),
            Text(
              '${widget.jumlah} pellets',
              style: TextStyle(
                color: widget.active
                    ? const Color(0xffFFA41B)
                    : const Color(0xff090F47).withOpacity(0.75),
                fontFamily: 'Overpass-regular',
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
