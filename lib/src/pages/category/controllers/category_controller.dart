import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/routes/route_paths/route_paths.dart';
import '../model/category_model.dart';

class CategoryController extends GetxController {
  var categories = <Category>[].obs;
  final name = TextEditingController();
  final price = TextEditingController();

  void addCategory(String name) {
    categories.add(Category(name: name));
  }


  void addCategoryFromPage() async {
    print('It works');
    var categoryInfo = await Get.toNamed(RoutePaths.addCategory);
    if (categoryInfo != null) {
      addCategory(categoryInfo[0],);
      }
  }
}
