import 'package:get/get.dart';
import 'medicines_grid_controller.dart';

class MedicinesGridBindings implements Bindings{
  @override
  void dependencies() {
    Get.put<MedicinesGridController>(MedicinesGridController());
  }

}