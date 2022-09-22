import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../common_widgets/common_sign_in_row.dart';
import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import 'Sign_in_screen2.dart';

class SignInScreen1 extends StatefulWidget {
  const SignInScreen1({Key? key}) : super(key: key);

  @override
  State<SignInScreen1> createState() => _OnBoardindScreen1State();
}

class _OnBoardindScreen1State extends State<SignInScreen1> {
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
                VariableUtils.welcome,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: Color(0xff181461),
                    fontSize: 9.5.w,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                VariableUtils.signin,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontSize: 6.w, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5.h,
              ),
              CommonSignInRow(
                text: VariableUtils.signinwithmob,
                color: Color(0xff2A2AC0),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                VariableUtils.or,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    color: Colors.grey,
                    fontSize: 6.w,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 7.h,
                    width: 88.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xff3A559F),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                            15,
                          ))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen2(),
                            ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageUtils.facebooklogo,
                          Text(
                            VariableUtils.signinwithfacebook,
                            textAlign: TextAlign.center,
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
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By signing in, you accept our',
                    style: GoogleFonts.lato(fontSize: 4.w),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Terms and Conditions',
                        style: GoogleFonts.lato(fontSize: 4.w),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
