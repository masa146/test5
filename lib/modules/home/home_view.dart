import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/components/custom_button.dart';
import 'package:test2/constant.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(backgroundColor: Colors.deepPurple),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Image.asset(
                'images/medicalStore.png',
                height: 300.h,
                width: 100.w,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Center(
              child: Text(
                "  Welcome to the pharmacy shop  ",
                style: TextStyle(
                  fontSize: 10.sp,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text(
                " Do you want to sign in as a Guest or Expert: ",
                style: TextStyle(
                  fontSize: 5.sp,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 50.h,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 100.w,
                    ),
                    child: CustomButton(
                      onpressed: () {},
                      text: 'Expert',
                    ),
                  ),
                  CustomButton(
                    onpressed: () {},
                    text: 'Guest',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
