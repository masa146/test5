import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onpressed,required this.text});

  final Function() onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 4.sp),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor:Colors.purple,
        fixedSize: Size(45.w, 30.h),
      ),
    );
  }
}
