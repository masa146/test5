import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test2/constant.dart';

import '../../components/custom_button.dart';
import '../../components/custom_textfield.dart';

class Login extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          title: Text("Welcome back "),
          backgroundColor: Colors.deepPurple,
        ),
        body: SafeArea(
            child: Column(
              children:[

                Center(
                  child: Image.asset(
                    'images/sign.png',
                    height: 300.h,
                    width: 100.w,
                    fit: BoxFit.contain,
                  ),
                ),

               // CustomTextField(text: 'User_Name', icon: Icons.person),
               // CustomTextField(text: 'password', icon: Icons.password),
                CustomButton(text: "login", onpressed:(){

                }) ,
          Padding(
            padding:  EdgeInsets.only(top:20.0.h,bottom: 10.h),
            child: TextButton(onPressed: (){
              Get.toNamed('/account');
            }, child: Text(
              "Don't have an account? Create one",style: TextStyle(
              decoration: TextDecoration.underline,color: Colors.black,fontSize: 6.sp
            ),
            ),

              ),
          ),]



    ),),);}}


