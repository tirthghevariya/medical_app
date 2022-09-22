import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MenuDrawerScreen extends StatelessWidget {
  const MenuDrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(automaticallyImplyLeading: true, title: Text('Medical App')),
      drawer: SafeArea(
        child: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.red,
              decoration: BoxDecoration(color: Color(0xffECF1FA)),
              accountName: Text('Sophie Garnier',
                  style: GoogleFonts.lato(
                      color: Color(0xff2A2AC0),
                      fontWeight: FontWeight.bold,
                      fontSize: 17.sp)),
              accountEmail: Text('Luxembourg',
                  style: GoogleFonts.lato(
                    color: Color(0xff181461),
                    fontSize: 14.sp,
                  )),
              currentAccountPicture: CircleAvatar(
                radius: 34,
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1604004555489-723a93d6ce74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Z2lybHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
              ),
            ),
            listtitlecommon(
              text: 'My Appointments',
              icon: Icons.calendar_today,
            ),
            listtitlecommon(
              text: 'New Appointment',
              icon: Icons.add_circle_outline,
            ),
            listtitlecommon(
              text: 'Medical Records',
              icon: Icons.description_outlined,
            ),
            listtitlecommon(
              text: 'Forum',
              icon: Icons.forum_outlined,
            ),
            listtitlecommon(
              text: 'Statistics',
              icon: Icons.timeline_rounded,
            ),
            listtitlecommon(
              text: 'Account Settings',
              icon: Icons.account_circle_outlined,
            ),
            listtitlecommon(
              text: 'Help',
              icon: Icons.help_outline,
            ),
          ],
        )),
      ),
    );
  }

  /// LIST TITLE COMMON
  ListTile listtitlecommon({required text, required icon}) {
    return ListTile(
      title: Text(text,
          style: GoogleFonts.lato(
              fontWeight: FontWeight.w500,
              fontSize: 13.sp,
              color: Colors.black87)),
      leading: Icon(icon, color: Color(0xff2A2AC0), size: 28),
    );
  }
}
