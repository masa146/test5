
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test2/modules/add_medicines/add_medicines_view.dart';
import 'package:test2/modules/create_account/create_account_view.dart';
import 'package:test2/modules/login/login_view.dart';
import 'package:test2/modules/medicine_card/medicine_card_binding.dart';
import 'package:test2/modules/medicines_details/medicines_details_view.dart';
import 'package:test2/modules/medicines_grid/medicines_grid_controller.dart';

import 'modules/home/home_view.dart';
import 'modules/medicines_grid/medicines_grid_view.dart';
import 'modules/search/search_view.dart';


void main() {
  runApp(
    ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/medicineGrid',
            getPages: [
              GetPage(name: '/home', page: () => Home()),
              GetPage(name: '/login', page:() => Login()),
              GetPage(name: '/account', page: () => Account()),
              GetPage(name: '/Search', page: () => Search()),
              GetPage(name: '/addMedicines', page: () =>AddMedicines()),
              GetPage(name: '/medicineGrid', page: () =>MedicinesGrid(),binding: MedicineCardBinding()),


            ],
            builder: EasyLoading.init(),
          );
        }),
  );
}

