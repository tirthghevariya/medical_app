import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../utils/image_utils.dart';
import '../../utils/variable_utils.dart';
import '../sign_in_screens/sign_in_screen1.dart';

class OnBoardindScreen1 extends StatefulWidget {
  const OnBoardindScreen1({Key? key}) : super(key: key);

  @override
  State<OnBoardindScreen1> createState() => _OnBoardindScreen1State();
}

class _OnBoardindScreen1State extends State<OnBoardindScreen1> {
  PageController _pageController = PageController(initialPage: 0);

  int pageChange = 0;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Color(0xffECF1FA),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 2.5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ImageUtils.logoheart],
            ),
            SizedBox(
              height: 4.h,
            ),
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    pageChange = value;
                  });
                },
                controller: _pageController,
                children: [
                  onBoardingOne(
                      title: VariableUtils.findYourDoctor,
                      bgImage: 'assets/roadpart1.png',
                      img: ImageUtils.onbordingscreenimg1),
                  onBoardingOne(
                      title: VariableUtils.storageYourMedicalRecords,
                      bgImage: 'assets/roadpart2.png',
                      img: ImageUtils.onbordinglogo2),
                  onBoardingOne(
                      title: VariableUtils.discussTheForum,
                      bgImage: 'assets/roadpart3.png',
                      img: ImageUtils.onbordinglogo3),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      // _pageController.previousPage(
                      //     duration: Duration(microseconds: 600),
                      //     curve: Curves.easeIn);

                      _pageController.jumpToPage(2);
                    },
                    child: Text('Skip'),
                  ),
                  Row(
                    children: List.generate(
                        3,
                        (index) => Container(
                              height: 12,
                              width: 12,
                              margin: EdgeInsets.symmetric(horizontal: 3),
                              decoration: BoxDecoration(
                                color: pageChange == index
                                    ? Colors.blue
                                    : Colors.grey,
                                shape: BoxShape.circle,
                              ),
                            )),
                  ),
                  TextButton(
                    onPressed: () {
                      if (pageChange == 2) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen1(),
                            ));
                      }

                      _pageController.nextPage(
                          duration: Duration(microseconds: 600),
                          curve: Curves.easeIn);
                    },
                    child: Text('Next'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Column onBoardingOne(
      {required String title, required String bgImage, required Widget img}) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.lato(
              color: Color(0xff181461),
              fontSize: 7.5.w,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 6.h,
        ),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 12.h),
              height: 40.h,
              width: 100.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(bgImage))),
            ),
            Positioned(
              top: 0,
              child: Padding(
                padding: EdgeInsets.only(left: 5.w, right: 10.w, top: 10.h),
                child: img,
              ),
            )
          ],
        ),
      ],
    );
  }
}
