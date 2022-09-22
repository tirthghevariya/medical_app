import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../../common_widgets/common_sign_in_row.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _OnBoardindScreen1State();
}

class _OnBoardindScreen1State extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xffECF1FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25.5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ImageUtils.logoheart],
              ),
              SizedBox(
                height: 6.h,
              ),
              Text(
                VariableUtils.location,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: Color(0xff181461),
                    fontSize: 22.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                VariableUtils.enterlocation,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: GoogleFonts.lato(
                    fontSize: 15.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  height: 7.h,
                  width: 88.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        prefixIcon: const Icon(Icons.location_on_outlined,
                            color: Color(0xff181461)),
                        hintText: VariableUtils.location2,
                        hintStyle: GoogleFonts.lato(
                            fontSize: 17.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              CommonSignInRow(
                text: VariableUtils.Continue,
                color: Color(0xff2A2AC0),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
