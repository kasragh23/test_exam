import 'package:get/get.dart';
import 'package:test_exam/src/pages/add_category/controllers/add_category_controller.dart';

class AddCategoryBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AddCategoryController>(()=> AddCategoryController());
  }
}