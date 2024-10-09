import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../infrastructure/utils/utils.dart';
import '../controllers/register_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Register'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: controller.username,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  verticalGap(),
                  TextField(
                    controller: controller.password,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  verticalGap(),
                  TextField(
                    controller: controller.confirmPass,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  verticalGap(),
                  Obx(() => Text(controller.passError.value,
                      style: const TextStyle(color: Colors.red))),
                  ElevatedButton(
                    onPressed: controller.register,
                    child: const Text('Submit'),
                  )
                ],
              ),
            ),
          ),
        ),
      );
}
