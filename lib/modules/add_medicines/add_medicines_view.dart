import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test2/components/custom_button.dart';
import 'package:test2/components/custom_textfield.dart';
import 'package:test2/constant.dart';

class AddMedicines extends StatelessWidget {
  const AddMedicines({super.key});

  @override
  Widget build(BuildContext context) {
  return  SafeArea(child: Scaffold(
      backgroundColor: backGroundColor,
     appBar: AppBar(
       backgroundColor:Colors.deepPurple ,
       title:Text(
         " for Adding new medicies... please enter these information : "
       )
     ),
      body: Column
(     crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.01),
              child: CustomTextField(text: "Scientific Name :",icon:Icons.east, onChange: (value){
              }),

            ),

            CustomTextField(text: "Trade Name :" ,icon:Icons.east , onChange: (value){
            }),
            CustomTextField(text: "Category :", icon:Icons.east,  onChange: (value){
            }),
            CustomTextField(text: "Company Name : ",  icon:Icons.east, onChange: (value){
            }),
            CustomTextField(text: "Quantity : ",icon:Icons.east,  onChange: (value){
            }),
            CustomTextField(text: "Price : ", icon:Icons.monetization_on_outlined, onChange: (value){
            }),

                CustomTextField(text: "Expiration Date : ", icon:Icons.date_range, onChange: (value){
                }),
                CustomButton(onpressed: (){}, text: "Add the medicine ")



          ],
        ),
      ),
    );

  }
}
