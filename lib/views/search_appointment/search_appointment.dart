import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/utils/const_utils.dart';
import 'package:untitled3/utils/size_utils.dart';
import 'package:untitled3/utils/variable_utils.dart';
import 'package:untitled3/views/search_appointment/special_doctor_screen.dart';

import '../../common_widgets/common_sign_in_row.dart';
import '../../utils/image_utils.dart';

class SearchAppoinment extends StatefulWidget {
  SearchAppoinment({Key? key}) : super(key: key);

  @override
  State<SearchAppoinment> createState() => _SearchAppoinmentState();
}

class _SearchAppoinmentState extends State<SearchAppoinment> {
  final globalkey = GlobalKey<ScaffoldState>();
  double rating = 0;

  String? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffECF1FA),
      key: globalkey,
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              globalkey.currentState!.openDrawer();
            },
            child: ImageUtils.drawer),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(10.h),
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.w, left: 3.w),
            child: Row(
              children: [
                Text('Book an appointment',
                    style: GoogleFonts.lato(
                        color: const Color(0xff181461),
                        fontWeight: FontWeight.bold,
                        fontSize: 22.sp)),
              ],
            ),
          ),
        ),
        actions: [
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
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            arrowColor: Colors.red,
            decoration: const BoxDecoration(color: Color(0xffECF1FA)),
            accountName: Text('Sophie Garnier',
                style: GoogleFonts.lato(
                    color: const Color(0xff2A2AC0),
                    fontWeight: FontWeight.bold,
                    fontSize: 17.sp)),
            accountEmail: Text('Luxembourg',
                style: GoogleFonts.lato(
                  color: const Color(0xff181461),
                  fontSize: 14.sp,
                )),
            currentAccountPicture: const CircleAvatar(
              radius: 34,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
            ),
          ),
          listviewwidget(
            text: 'My Appointments',
            icon: Icons.calendar_today,
          ),
          listviewwidget(
            text: 'New Appointment',
            icon: Icons.add_circle_outline,
          ),
          listviewwidget(
            text: 'Medical Records',
            icon: Icons.description_outlined,
          ),
          listviewwidget(
            text: 'Forum',
            icon: Icons.forum_outlined,
          ),
          listviewwidget(
            text: 'Statistics',
            icon: Icons.timeline_rounded,
          ),
          listviewwidget(
            text: 'Account Settings',
            icon: Icons.account_circle_outlined,
          ),
          listviewwidget(
            text: 'Help',
            icon: Icons.help_outline,
          ),
        ],
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            textfield(htext: 'Doctor, Specialities …', picon: Icons.search),
            SizedBox(
              height: 2.h,
            ),
            textfield(htext: 'Select Area', picon: Icons.location_on_outlined),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: InkWell(
                onTap: () async {
                  var date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now());

                  setState(() {
                    selectedDate = date.toString();
                  });
                },
                child: Container(
                  height: 6.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: const Icon(Icons.date_range_outlined,
                            color: Color(0xff2A2AC0), size: 32),
                      ),
                      SizeConfig.sW1,
                      Text(selectedDate ?? 'Select Date')
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            CommonSignInRow(
              text: VariableUtils.search,
              color: Color(
                0xff2A2AC0,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('All Specialities',
                            style: GoogleFonts.lato(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            )),
                        Image(image: AssetImage('assets/setting.png'))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  SizedBox(
                    height: 34.7.h,
                    child: ListView.builder(
                      itemBuilder: (Context, index) {
                        final data = ConstUtils.userData[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SpecialDoctor(
                                  doctorJob: data['last_name'],
                                  doctorName: '${data['first_name']}',
                                  avatar: data['avatar'],
                                  doctorField: '${data['Field']}',
                                  doctorAddress: '${data['address']},',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            color: Color(0xffECF1FA),
                            margin:
                                EdgeInsetsDirectional.fromSTEB(5.w, 0, 20, 20),
                            child: AspectRatio(
                              aspectRatio: 3 / 1,
                              child: Container(
                                  child: Row(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image(
                                          fit: BoxFit.cover,
                                          image: AssetImage(data['avatar'])),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3.w),
                                        child: Text('${data['first_name']}',
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.sp,
                                                color: Colors.black)),
                                      ),
                                      SizedBox(
                                        height: .5.h,
                                      ),
                                      Text('${data['last_name']}',
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp,
                                              color: Colors.grey)),
                                      Text('${data['address']}',
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.sp,
                                              color: Colors.grey)),
                                      Row(
                                        children: [
                                          RatingBar.builder(
                                            itemCount: 5,
                                            initialRating: 3,
                                            itemSize: 5.w,
                                            updateOnDrag: true,
                                            itemBuilder: (context, index) =>
                                                Icon(Icons.star,
                                                    size: 5.w,
                                                    color: Color(0xffF8A200)),
                                            onRatingUpdate: (rating) {
                                              setState(() {
                                                this.rating = rating;
                                              });
                                            },
                                          ),
                                          Text('$rating')
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )),
                            ),
                          ),
                        );
                      },
                      itemCount: ConstUtils.userData.length,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// COMMON TEXT FIELD
  Padding textfield({required htext, required picon}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Container(
        height: 6.h,
        width: 90.w,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: TextFormField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 30, vertical: 12),
              prefixIcon: Icon(picon, color: Color(0xff2A2AC0), size: 32),
              hintText: htext,
              hintStyle: GoogleFonts.lato(
                  fontSize: 14.sp,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }

  /// COMMON LIST VIEW
  ListTile listviewwidget({required text, required icon}) {
    return ListTile(
      title: Text(text,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              color: Colors.black87)),
      leading: Icon(icon, color: const Color(0xff2A2AC0), size: 28),
    );
  }
}
