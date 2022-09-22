import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/utils/image_utils.dart';

class DashBord extends StatelessWidget {
  DashBord({Key? key}) : super(key: key);

  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  Container(
                    height: 6.h,
                    width: 88.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
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
                ],
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.7),
                children: [
                  Card(
                    color: Colors.white,
                    child: ImageUtils.cardimage1,
                  ),
                  Card(
                    color: Colors.yellow,
                    child: ImageUtils.cardimage2,
                  ),
                  Card(
                    color: Colors.yellow,
                    child: ImageUtils.cardimage3,
                  ),
                  Card(
                    color: Colors.yellow,
                    child: ImageUtils.cardimage4,
                  ),
                ],
              ),
            )
          ],
        ),
        key: globalKey,
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
        backgroundColor: const Color(0xffECF1FA),
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                globalKey.currentState!.openDrawer();
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
                  Text('Dashboard',
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
        ));
  }

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
