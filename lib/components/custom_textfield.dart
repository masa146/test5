import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text,  this.icon,required this.onChange});

  final String text;
  final IconData? icon;
  final Function(String) onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 80.0.w,vertical: 2.h),
      child: TextFormField(
        onChanged:onChange ,
          /*validator: (value) {
                        if (value!.isEmpty) {
                          return "pleas enter your data";
                        }
                      },*/
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 100.w),
            hintText: text,
            border: const OutlineInputBorder(),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.purple),
            ),
            prefixIcon: Icon(
              icon,
              color: Colors.black,
            ),
          ),
          maxLength: 10,
          keyboardType: TextInputType.phone,

      ),
    );
  }
}
