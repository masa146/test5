import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test2/models/medicine.dart';

import 'medicine_card_binding.dart';
import 'medicine_card_controller.dart';

class MedicineCard extends StatelessWidget {
  final Medicine medicine;
  final VoidCallback onTap;


  MedicineCard({required this.medicine, required this.onTap}) {
    Get.put(MedicineCardController(medicine.quantity.obs), tag: medicine.trade_name);
  }
  @override
  Widget build(BuildContext context) {
    final MedicineCardController controller = Get.find<MedicineCardController>(tag: medicine.trade_name);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.deepPurple, width: 1.w)),
        margin: EdgeInsets.all(20),
        height: 270.h,
        width: 90.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.h, bottom: 10.h),
              child: Container(
                height: 150.h,
                width: 50.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(medicine.image))),
              ),
            ),
            Text(
              medicine.trade_name,
              style: TextStyle(color: Colors.indigo[800], fontSize: 5.sp),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(() => Text(
                  '${controller.quantity.value} pieces',
                  style: TextStyle(fontSize: 5.sp),
                )),
                Text(
                  '${ medicine.price} SP',
                  style: TextStyle(fontSize: 5.sp),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    "Click to increase quantity",
                    style: TextStyle(fontSize: 5.sp),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    height: 25 .h,
                    child: FloatingActionButton(
                      onPressed:(){
                        controller.incrementQuantity();
                      },
                      child: Icon(

                        Icons.add,
                        size: 5.sp,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}