import 'package:get/get.dart';
import 'package:test_exam/src/pages/category/controllers/category_controller.dart';

class CategoryBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> CategoryController());
  }

}