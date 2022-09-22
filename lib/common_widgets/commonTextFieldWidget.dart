import 'package:flutter/material.dart';
import 'package:untitled3/utils/color_utils.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.hintText,
    this.picon,
    this.sicon,
    required this.color1,
  }) : super(key: key);
  final String hintText;
  final Widget? sicon;
  final Widget? picon;
  final Color color1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: ColorUtils.grey.withOpacity(.40),
              blurRadius: 10,
              spreadRadius: 1)
        ], color: color1, borderRadius: BorderRadius.circular(50)),
        child: TextFormField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              prefixIcon: picon,
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 20),
              suffixIcon: sicon,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
