import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPInput extends StatefulWidget {
  final Function(String) onSubmitted;

  const OTPInput({Key? key, required this.onSubmitted}) : super(key: key);

  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  List<TextEditingController> otpControllers =
      List.generate(6, (index) => TextEditingController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        6,
        (index) => SizedBox(
          width: 40,
          child: TextField(
            controller: otpControllers[index],
            keyboardType: TextInputType.number,
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(1),
            ],
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 18),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              hintText: '0',
              hintStyle: TextStyle(
                fontFamily: 'Overpass-regular',
                fontSize: 26,
                color: const Color(0xff090F47).withOpacity(0.45),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: const Color(0xff090F47).withOpacity(0.45),
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff4157FF),
                ),
              ),
            ),
            onChanged: (value) {
              if (index < 5 && value.isNotEmpty) {
                FocusScope.of(context).nextFocus();
              } else if (index > 0 && value.isEmpty) {
                FocusScope.of(context).previousFocus();
              }
            },
            onEditingComplete: () {
              if (index > 0 && otpControllers[index].text.isEmpty) {
                FocusScope.of(context).previousFocus();
              }
            },
            onSubmitted: (value) {
              if (index == 5) {
                widget.onSubmitted(
                    otpControllers.map((controller) => controller.text).join());
              }
            },
          ),
        ),
      ),
    );
  }
}
