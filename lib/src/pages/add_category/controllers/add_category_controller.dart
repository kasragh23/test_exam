import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_exam/src/pages/category/model/category_model.dart';

class AddCategoryController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();

  var fieldError = ''.obs;
  final categories = <Category>[].obs;

  String? validate(String? value) {
    if (value != null && value.isEmpty) return 'Required';
    return null;
  }

  void addCategory() {
    print('Add works');
    if (formKey.currentState?.validate() ?? false) {
      categories.add(Category(name: name.text));
        List<String> data = [name.text];
        Get.back<List<String>>(result: data);
      }
    }
  }

