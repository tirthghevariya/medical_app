import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/utils/image_utils.dart';
import 'package:untitled3/utils/variable_utils.dart';
import '../../common_widgets/commonTextFieldWidget.dart';
import '../../common_widgets/common_sign_in_row.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/mapimage.png',
                ),
              ),
            ),
          ),
          SizedBox(height: 12.h),
          TextFieldWidget(
            color1: Colors.white,
            hintText: 'Your Lication',
            picon: Icon(Icons.location_on_outlined),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageUtils.locationimage,
              SizedBox(height: 30.h),
              CommonSignInRow(
                color: Color(0xff2A2AC0),
                text: VariableUtils.Confirm,
              )
            ],
          ),
        ],
      ),
    );
  }
}
