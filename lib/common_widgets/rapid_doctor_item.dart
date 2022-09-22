import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class RapidEducationItem extends StatelessWidget {
  const RapidEducationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Language',
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.sp,
                  color: Colors.black)),
        ],
      ),
    );
  }
}
