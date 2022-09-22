import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import '../../../common_widgets/common_sign_in_row.dart';
import '../../../utils/image_utils.dart';
import '../../../utils/variable_utils.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OnBoardindScreen1State();
}

class _OnBoardindScreen1State extends State<OtpScreen> {
  String title = 'Country code picker';
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
                VariableUtils.verification,
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
                VariableUtils.indertcode,
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
                  child: Pinput(
                    length: 4,
                    showCursor: true,
                    disabledPinTheme:
                        PinTheme(textStyle: TextStyle(color: Colors.white)),
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
              SizedBox(
                height: 1.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          VariableUtils.resentcode,
                          style: TextStyle(
                              color: Color((0xff2A2AC0)), fontSize: 14.sp),
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          VariableUtils.changenumber,
                          style: TextStyle(
                              color: Color((0xff2A2AC0)), fontSize: 14.sp),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
