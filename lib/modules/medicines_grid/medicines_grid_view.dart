import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test2/models/medicine.dart';
import 'package:test2/modules/medicine_card/medicine_card_view.dart';
import 'package:test2/modules/medicines_details/medicines_details_view.dart';

class MedicinesGrid extends StatelessWidget {
  MedicinesGrid({super.key});
  final List<Medicine> products = [
    Medicine(
        trade_name: "Allergy Relief",
        price: 20,
        image: "assets/Allergy Relief1.png",
        quantity: 5,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Dettol",
        price: 200,
        image: "assets/Dettol1.png",
        quantity: 3,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol1.png",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Allergy Relief",
        price: 20,
        image: "assets/Allergy Relief.jpg",
        quantity: 5,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 3,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
    Medicine(
        trade_name: "Dettol",
        price: 20,
        image: "assets/Dettol.jpg",
        quantity: 100,
        ScientificName: "Scientific Name",
        expirationDate: "20,10,2026",
        category: "Antibyotic",
        company: "Syrian Company"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.deepPurple[100],
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "This is your products....Do you want to add something? 🤔 ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 6.sp,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                   Get.toNamed('/Search');
                  },
                ),
              ],
            ),
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemCount: products.length,
            itemBuilder: (ctx, i) {
              return MedicineCard(
                   medicine:products[i], onTap: () {
                     Get.to(MedicineDetails(productDetail: products[i]));
              },
          );})),
    );

}
}

