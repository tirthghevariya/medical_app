import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../common_widgets/common_sign_in_row.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';

class SignInScreen2 extends StatefulWidget {
  const SignInScreen2({Key? key}) : super(key: key);

  @override
  State<SignInScreen2> createState() => _OnBoardindScreen1State();
}

class _OnBoardindScreen1State extends State<SignInScreen2> {
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
                VariableUtils.mobileno,
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
                VariableUtils.otpmobile,
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
                  padding: EdgeInsets.only(right: 67.w, left: 2.w),
                  child: CountryCodePicker(
                    initialSelection: 'in',
                    backgroundColor: Colors.white,
                    showOnlyCountryWhenClosed: false,
                    favorite: ['+91', 'IN'],
                    enabled: true,
                    textStyle: TextStyle(
                      color: Color(0xff2A2AC0),
                      fontSize: 13.sp,
                    ),
                    showFlagMain: false,
                    alignLeft: true,
                    hideMainText: false,
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
