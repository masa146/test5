import 'package:get/get.dart';

class MedicineCardController extends GetxController {
  RxInt quantity;
MedicineCardController(this.quantity);


  void incrementQuantity() {
    quantity.value++;
  }
}