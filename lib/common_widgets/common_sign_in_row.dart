import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CommonSignInRow extends StatelessWidget {
  const CommonSignInRow({
    Key? key,
    required this.text,
    required this.color,
    this.FaceLogo,
  }) : super(key: key);
  final String text;
  final Color color;
  final Widget? FaceLogo;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 7.h,
          width: 88.w,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: color,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ))),
            onPressed: () {

            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: GoogleFonts.lato(
                    fontSize: 5.5.w,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
