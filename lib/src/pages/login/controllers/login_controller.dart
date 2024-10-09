import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/database/db.dart';
import '../../../infrastructure/routes/route_paths/route_paths.dart';


class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final username = TextEditingController();
  final password = TextEditingController();

  String? validate(String? value) {
    if (value != null) {
      if (value.isEmpty) return 'Required';
    }
    return null;
  }

  void login(){
    if(formKey.currentState?.validate() ?? false){
      if(Db.credentials[username.text] == password.text){
        Get.offAllNamed(RoutePaths.category, arguments: username.text);
      }
      else{
        Get.showSnackbar(GetSnackBar(
          backgroundColor: Colors.red.shade900,
          title: 'Validation Error',
          message: 'Invalid Credentials',
          duration: const Duration(seconds: 4),
        ));
      }
    }
  }

  void register() async{
    var userInfo = await Get.toNamed(RoutePaths.register);
    if(userInfo != null){
      username.text = userInfo[0];
      password.text = userInfo[1];
    }
  }
}
