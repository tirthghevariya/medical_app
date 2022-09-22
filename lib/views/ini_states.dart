import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/utils/variable_utils.dart';

import 'on_bording_screen/on_bording_screen1.dart';

class InitState extends StatefulWidget {
  const InitState({Key? key}) : super(key: key);

  @override
  State<InitState> createState() => _InitStateState();
}

class _InitStateState extends State<InitState> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return OnBoardindScreen1();
      }));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff2828B6),
                Color(0xff181461),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 10.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/heart.png'),
                  ),
                ),
                child: const Image(
                  image: AssetImage('assets/heart_line.png'),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(VariableUtils.appname,
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 6.5.w,
                          color: Colors.white)),
                  Text(
                    VariableUtils.appname2,
                    style:
                        GoogleFonts.lato(color: Colors.white, fontSize: 6.5.w),
                  )
                ],
              )
            ],
          ),
        ),
      );
}
