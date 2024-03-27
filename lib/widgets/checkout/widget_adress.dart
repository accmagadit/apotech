import 'package:flutter/material.dart';

class AddressWidget extends StatefulWidget {
  final String tempat;
  final String noTelp;
  final String alamat;
  final bool isSelected;
  final VoidCallback onSelected;

  const AddressWidget({
    Key? key,
    required this.tempat,
    required this.noTelp,
    required this.alamat,
    required this.isSelected,
    required this.onSelected,
  }) : super(key: key);

  @override
  _AddressWidgetState createState() => _AddressWidgetState();
}

class _AddressWidgetState extends State<AddressWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xff090F47).withOpacity(0.1),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio(
                  value: widget.tempat,
                  activeColor: const Color(0xff4157FF),
                  groupValue: widget.isSelected ? widget.tempat : null,
                  onChanged: (value) {
                    widget.onSelected();
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.tempat,
                      style: const TextStyle(
                        fontFamily: 'Overpass-Bold',
                      ),
                    ),
                    Text(
                      widget.noTelp,
                      style: TextStyle(
                        fontFamily: 'Overpass',
                        color: const Color(0xff090F47).withOpacity(0.45),
                      ),
                    ),
                    Text(
                      widget.alamat,
                      style: TextStyle(
                        fontFamily: 'Overpass',
                        color: const Color(0xff090F47).withOpacity(0.45),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.edit)
          ],
        ),
      ),
    );
  }
}
