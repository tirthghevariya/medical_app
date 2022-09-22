import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/utils/image_utils.dart';

import '../common_widgets/common_sign_in_row.dart';

class MyAppointment extends StatefulWidget {
  const MyAppointment({Key? key}) : super(key: key);

  @override
  State<MyAppointment> createState() => _OnBoardindScreen1State();
}

class _OnBoardindScreen1State extends State<MyAppointment> {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xffECF1FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(
                    color: Color(0xff181461),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: Color(0xff181461),
                        size: 30,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 4.w,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('My Appointments',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold, fontSize: 16.sp)),
                ],
              ),
            ),
            SizedBox(
              height: 10.w,
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
                      suffixIcon: const Icon(Icons.search,
                          color: Color(0xff707070), size: 28),
                      hintText: 'Search',
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Upcoming',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            color: Color(0xff2A2AC0),
                            fontSize: 17.sp)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Past',
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 17.sp)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 45.h,
              child: ListView(
                children: [
                  listtitle(text: 'Dentist - Clara Odding', date: '09/04/2020'),
                  SizedBox(
                    height: 4.h,
                  ),
                  listtitle(
                      text: 'Cardiologist - Steven Pauliner',
                      date: '21/04/2020'),
                  SizedBox(
                    height: 4.h,
                  ),
                  listtitle(
                      text: 'Dermatologist - Noemi Shinte', date: '18/06/2020'),
                ],
              ),
            ),
            CommonSignInRow(
              color: Color(0xff2A2AC0),
              text: 'Book a new appointment',
            )
          ]),
        ),
      ),
    ));
  }

  /// COMMON LIST TITLE
  ListTile listtitle({required text, required date}) {
    return ListTile(
      title: Text(date,
          style: GoogleFonts.lato(color: Colors.black45, fontSize: 14.sp)),
      subtitle: Row(
        children: [
          Text(
            text,
            style: GoogleFonts.lato(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          SizedBox(
            width: 1.w,
          ),
          ImageUtils.about_img
        ],
      ),
    );
  }
}
