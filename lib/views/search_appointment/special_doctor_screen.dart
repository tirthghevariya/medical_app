import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/utils/const_utils_information.dart';
import 'package:untitled3/views/search_appointment/search_appointment.dart';

import '../../common_widgets/common_sign_in_row.dart';
import '../payment.dart';

class SpecialDoctor extends StatefulWidget {
  const SpecialDoctor(
      {Key? key,
      required this.doctorName,
      required this.avatar,
      required this.doctorField,
      required this.doctorAddress,
      required this.doctorJob})
      : super(key: key);

  final String doctorField;
  final String doctorJob;
  final String doctorAddress;
  final String doctorName;
  final String avatar;

  @override
  State<SpecialDoctor> createState() => _SpecialDoctorState();
}

class _SpecialDoctorState extends State<SpecialDoctor>
    with SingleTickerProviderStateMixin {
  double Raiting = 0;

  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECF1FA),
      body: SingleChildScrollView(
        child: Column(children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackButton(
                  color: const Color(0xff181461),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: const Color(0xff181461),
                      size: 25.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          buildDetailBox(),
          buildSlotContainer(),
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
                      primary: Color(0xff2A2AC0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        15,
                      ))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return (Payment(
                          doctorName: 'Dr. Clara Odding',
                        ));
                      },
                    ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Book appointment',
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
          TabBar(
              controller: tabController,
              labelColor: const Color(0xff2A2AC0),
              unselectedLabelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: const Color(0xff2A2AC0),
              labelStyle: GoogleFonts.lato(
                  fontSize: 15.sp, fontWeight: FontWeight.w500),
              tabs: const [
                Tab(
                  text: 'Doctor',
                ),
                Tab(
                  text: 'Clinic',
                ),
                Tab(
                  text: 'FeedBack',
                ),
              ]),
          ListView.builder(
            shrinkWrap: true,
            itemCount: ConstUtilsInformation.userInformation.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final data = ConstUtilsInformation.userInformation[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data['language']}',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 5.w,
                          width: 10.w,
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/english.png')),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        language(text: '${data['Language0']}'),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          height: 5.w,
                          width: 10.w,
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/french.png')),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        language(text: '${data['Language1']}'),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          height: 5.w,
                          width: 10.w,
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/german.png')),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        language(text: '${data['Language2']}'),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: ConstUtilsInformation.userInformation.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final data = ConstUtilsInformation.userInformation[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data['education']}',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    education_Information(
                        line: 1,
                        education_Information: '${data['Education0']}'),
                    education_Information(
                        line: 1,
                        education_Information: '${data['Education1']}'),
                    education_Information(
                        line: 1,
                        education_Information: '${data['Education2']}'),
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: ConstUtilsInformation.userInformation.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final data = ConstUtilsInformation.userInformation[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data['publications']}',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    education_Information(
                        line: 1,
                        education_Information: '${data['Publication0']}'),
                    education_Information(
                        line: 2,
                        education_Information: '${data['Publication1']}'),
                  ],
                ),
              );
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: ConstUtilsInformation.userInformation.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var data = ConstUtilsInformation.userInformation[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data['description']}',
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    education_Information(
                        line: 1,
                        education_Information: '${data['Description0']}'),
                    education_Information(
                        line: 1,
                        education_Information: '${data['Description1']}'),
                    education_Information(
                        line: 2,
                        education_Information: '${data['Description2']}'),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              );
            },
          ),
        ]),
      ),
    );
  }

  SingleChildScrollView buildSlotContainer() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            appointment_card(day: 'Thu,09 Apr'),
            appointment_card(day: 'Fri,10 Apr'),
          ],
        ),
      ),
    );
  }

  Container buildDetailBox() {
    return Container(
      color: const Color(0xffECF1FA),
      margin: EdgeInsetsDirectional.fromSTEB(5.w, 0, 20, 20),
      child: AspectRatio(
        aspectRatio: 2.5 / 1,
        child: Container(
            child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child:
                    Image(fit: BoxFit.cover, image: AssetImage(widget.avatar)),
              ),
            ),
            SizedBox(
              width: 5.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.doctorName,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        color: Colors.black)),
                SizedBox(
                  height: .5.h,
                ),
                Text(widget.doctorJob,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 14.sp,
                        color: Colors.grey)),
                SizedBox(
                  height: 2.w,
                ),
                Text(widget.doctorAddress,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.grey)),
                SizedBox(
                  height: .4.h,
                ),
                Text(widget.doctorField,
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp,
                        color: Colors.grey)),
                SizedBox(
                  height: .4.h,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      itemCount: 5,
                      initialRating: 3,
                      itemSize: 5.w,
                      updateOnDrag: true,
                      itemBuilder: (context, index) => Icon(Icons.star,
                          size: 5.w, color: const Color(0xffF8A200)),
                      onRatingUpdate: (rating) {
                        setState(() {
                          this.Raiting = rating;
                        });
                      },
                    ),
                    Text('$Raiting')
                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }

  Text education_Information({required education_Information, required line}) {
    return Text(
      education_Information,
      maxLines: line,
      style: GoogleFonts.lato(
          fontWeight: FontWeight.bold, fontSize: 12.sp, color: Colors.grey),
    );
  }

  Text language({required text}) {
    return Text(text,
        style: GoogleFonts.lato(
            color: Colors.grey, fontSize: 14.sp, fontWeight: FontWeight.w500));
  }

  Container flagImage({required flag}) {
    return Container(
      height: 5.w,
      width: 10.w,
      decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(flag))),
    );
  }

  Card appointment_card({required day}) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 45.w,
        width: 85.w,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        day,
                        style: GoogleFonts.lato(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.sp,
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Text(
                        '3 Slots available',
                        style: GoogleFonts.lato(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 11.5.w,
                    width: 35.w,
                    decoration: BoxDecoration(
                        color: const Color(0xff2A2AC0),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text('SEE ALL',
                          style: GoogleFonts.lato(
                            fontSize: 17.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  time_container(time: '08:00'),
                  SizedBox(
                    width: 2.w,
                  ),
                  time_container(time: '12:00'),
                  SizedBox(
                    width: 2.w,
                  ),
                  time_container(time: '15:00')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container time_container({required time}) {
    return Container(
      height: 12.w,
      width: 23.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          border: Border.all(
              color: Colors.grey.withOpacity(.3),
              style: BorderStyle.solid,
              width: 3)),
      child: Center(
        child: Text(
          time,
          style: GoogleFonts.lato(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.sp),
        ),
      ),
    );
  }
}
