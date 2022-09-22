import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../common_widgets/commonTextFieldWidget.dart';
import '../utils/color_utils.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key, required this.doctorName}) : super(key: key);
  final String doctorName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECF1FA),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const BackButton(
                    color: const Color(0xff181461),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: const Color(0xff181461),
                      size: 25.sp,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp),
                ),
                SizedBox(
                  width: 01.h,
                ),
                Text(
                  'Confirmation',
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17.sp),
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 8.h,
              width: 55.w,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Thu,09 Apr',
                    style: GoogleFonts.lato(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.sp),
                    child: Text(
                      '08:00',
                      style: GoogleFonts.lato(
                          fontSize: 17.sp,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff2AC052)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: const Color(0xff2A2AC0),
                  size: 8.w,
                ),
                SizedBox(
                  width: 2.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2 Rue de Ermesinde',
                      style: GoogleFonts.lato(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Text(
                      'Frisange - Luxembourg 3 km',
                      style: GoogleFonts.lato(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 2.5.h,
            ),
            common_textField(text: 'Message'),
            SizedBox(
              height: 2.h,
            ),
            common_textField(text: 'Reason of the Visit'),
            SizedBox(
              height: 2.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Check+Scaling',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lato(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff181461)),
                ),
                Text(
                  '124€',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lato(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff181461)),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Select The card',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.lato(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff181461)),
                ),
                SizedBox(
                  height: 1.h,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Card(
                        color: Colors.white,
                        child: Container(
                          height: 45.w,
                          width: 85.w,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/visaCard1.png')),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      Card(
                        color: Colors.white,
                        child: Container(
                          height: 45.w,
                          width: 85.w,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/visaCard2.png')),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 6.h,
                      width: 88.w,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xff2A2AC0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                              12,
                            ))),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Pay Now',
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
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// COMMON TEXT FIELS WIDGET
  Padding common_textField({required text}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: ColorUtils.grey.withOpacity(.40),
              blurRadius: 10,
              spreadRadius: 1)
        ], color: ColorUtils.white, borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              hintText: text,
              hintStyle: const TextStyle(fontSize: 20),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
