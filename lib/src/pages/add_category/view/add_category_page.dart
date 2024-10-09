import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_exam/src/infrastructure/utils/utils.dart';
import 'package:test_exam/src/pages/add_category/controllers/add_category_controller.dart';

class AddCategoryPage extends GetView<AddCategoryController> {
  const AddCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Category')),
      body:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: controller.formKey,
            child:  Column(
              children: [
                TextFormField(
                  controller: controller.name,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: controller.validate,
                ),
                verticalGap(),
                ElevatedButton(
                  onPressed: () {
                    controller.addCategory();
                  },
                  child: const Text('Add Category'),
                ),
              ],
            ),
          ),
        ),

    );
  }
}
