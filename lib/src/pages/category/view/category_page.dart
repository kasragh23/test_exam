import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_exam/src/pages/category/controllers/category_controller.dart';


class CategoryPage extends GetView<CategoryController> {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.categories.length,
          itemBuilder: (context, index) {
            final category = controller.categories[index];
            return Column(
              children: [
                ListTile(title: Text(category.name,)
                //TODO: I faced a logic issue so I miss creating category items...
                ),
              ],
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.addCategoryFromPage(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
