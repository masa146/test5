import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test2/models/medicine.dart';

import '../../constant.dart';
import '../medicine_card/medicine_card_controller.dart';


class MedicineDetails extends StatelessWidget {
   MedicineDetails({super.key, required this.productDetail}) {
    Get.put(MedicineCardController(productDetail.quantity.obs), tag: productDetail.trade_name);
  }
  final Medicine productDetail;

  @override
  Widget build(BuildContext context) {
    final MedicineCardController controller = Get.find<MedicineCardController>(tag: productDetail.trade_name);
    return SafeArea(
      child: Scaffold(
        backgroundColor: backGroundColor,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            "More details about the product :",
            style: TextStyle(fontSize: 6.sp),
          ),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 30.w, top: 20.h, bottom: 20.h, right: 20.w),
              child: Container(
                height: 400.h,
                width: 100.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(productDetail.image))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      Text(
                        " . Scientific Name :",
                        style: TextStyle(
                            color: textCardColor, fontSize: 9.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        productDetail.ScientificName!,
                        style: TextStyle(color: textCardColor2, fontSize: 9.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        " . Trade Name :",
                        style: TextStyle(
                            color: textCardColor, fontSize: 9.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        productDetail.trade_name,
                        style: TextStyle(color: textCardColor2, fontSize: 9.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        " . Category :",
                        style: TextStyle(
                            color: textCardColor, fontSize: 9.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        productDetail.category!,
                        style: TextStyle(color: textCardColor2, fontSize: 9.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        " . Company :",
                        style: TextStyle(
                            color: textCardColor, fontSize: 9.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        productDetail.company!,
                        style: TextStyle(color: textCardColor2, fontSize: 9.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        " . Quantity :",
                        style: TextStyle(
                            color: textCardColor, fontSize: 9.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        " ${controller.quantity.value} pieces",
                        style: TextStyle(color: textCardColor2, fontSize: 9.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        " . Price :",
                        style: TextStyle(
                            color: textCardColor, fontSize: 9.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        "${productDetail.price} SP",
                        style: TextStyle(color: textCardColor2, fontSize: 9.sp),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        " . Expiration Date :",
                        style: TextStyle(
                            color: textCardColor, fontSize: 9.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        productDetail.expirationDate!,
                        style: TextStyle(color: textCardColor2, fontSize: 9.sp),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
