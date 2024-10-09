import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_exam/src/pages/category_items/controllers/category_items_controller.dart';

class CategoryItemsPage extends GetView<CategoryItemsController>{
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Category Items'),
    ),
    body: Padding(padding: EdgeInsets.all(100),
    child: Center(
      // child: ListView.builder(itemBuilder: ),
    ),),
  );
  
}