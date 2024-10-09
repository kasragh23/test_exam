import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/utils/utils.dart';
import '../controllers/login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Form(
                key: controller.formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: controller.username,
                      decoration: InputDecoration(
                        hintText: 'username',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    verticalGap(),
                    TextField(
                      controller: controller.password,
                      decoration: InputDecoration(
                        hintText: 'password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    verticalGap(),
                    ElevatedButton(
                      onPressed: controller.login,
                      child: const Text('Submit'),
                    ),
                    verticalGap(),
                    InkWell(
                      onTap: controller.register,
                      child: const Text(
                        "Don't have account? create one.",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      );
}
