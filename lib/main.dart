import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/views/dashbord.dart';
import 'package:untitled3/views/menu.dart';
import 'package:untitled3/views/my_appointment.dart';
import 'package:untitled3/views/search_appointment/search_appointment.dart';
import 'package:untitled3/views/search_appointment/special_doctor_screen.dart';
import 'package:untitled3/views/sign_in_screens/map_screen.dart';
import 'package:untitled3/views/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      },
    );
  }
}
