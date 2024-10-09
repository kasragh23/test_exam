import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../infrastructure/database/db.dart';

class RegisterController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();
  final confirmPass = TextEditingController();
  var passError = ''.obs;

  String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) return 'Required';
      if (value.length < 6) return 'must be more than 6 characters';
    }
    return null;
  }

  void register() {
    if (formKey.currentState?.validate() ?? false) {
      if (password.text == confirmPass.text) {
        passError.value = '';
        Db.credentials[username.text] = password.text;
        List<String> data = [username.text, password.text];
        Get.back<List<String>>(result: data);
      } else {
        passError.value = 'Password does not matched. Please try again';
      }
    }
  }
}
