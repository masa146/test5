import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/constant.dart';
class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        backgroundColor: backGroundColor,
    appBar: AppBar(

    centerTitle: true,
    title: Text(
    "looking for what ?",
    style: TextStyle(color: Colors.white),
    ),
    backgroundColor: Colors.deepPurple[500],
    ),
    body: Stack(
    children: [
    Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('images/OIG.png'),
    fit: BoxFit.cover,
    colorFilter: ColorFilter.mode(
    Color(0xffCE93D8),
    BlendMode.dstATop,
    ),
    ),
    ),
    ),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 80.0.w,vertical: 10.h),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: Color(0xfff0f3fa)
    ),
    child: TextField(
    decoration: InputDecoration(
    labelText:"Search",
    suffixIcon: const Icon(Icons.search,color: Colors.deepPurpleAccent,),
    hintText: "Enter Name or Category : ",
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.deepPurpleAccent)),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.deepPurpleAccent))
    ,focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.deepPurpleAccent))),

    ),
    ),
    ),
    ],
    )));
  }
}
