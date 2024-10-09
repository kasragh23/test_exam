import 'package:get/get.dart';
import 'package:test_exam/src/pages/category_items/controllers/category_items_controller.dart';

class CategoryItemsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(()=> CategoryItemsController());
  }
}