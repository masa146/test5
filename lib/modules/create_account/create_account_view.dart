

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test2/components/custom_button.dart';
import 'package:test2/components/custom_textfield.dart';
import 'package:test2/constant.dart';
import 'package:test2/modules/create_account/create_account_controller.dart';

class Account extends StatelessWidget {
CreateAccountController controller = Get.put(CreateAccountController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text("Enter your information : ",),
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(
        child: Column(
            children:[
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Image.asset(
                'images/create.png',
                height: 300.h,
                width: 100.w,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextField(text: 'User_Name', icon: Icons.person,onChange:(value){
            controller.userName=value;
            },),
            CustomTextField(text: 'Phone_Number', icon: Icons.phone_android,onChange:(value){
              controller.phoneNumber=value;
            },),
            CustomTextField(text: 'password', icon: Icons.password,onChange: (value){
              controller.password=value;
            },),
           CustomButton(text: "create account", onpressed:(){
             onClickRegister();
           })],

          ),
        )



    );}
  void onClickRegister() async{
    EasyLoading.show(status: 'loading....');
   await controller.registerOnClick();
   if(controller.createAccountStutus){
     EasyLoading.showSuccess(controller.message);
     Get.offNamed('/login');
   }
   else{
     EasyLoading.showError(controller.message,duration: Duration(seconds: 10),dismissOnTap: true);
     print('there is an error ');
   }

  }
}


