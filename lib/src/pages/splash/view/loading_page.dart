import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/splash_controller.dart';

class LoadingPage extends GetView<SplashController> {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    controller.wait();
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: Colors.deepOrange,),
      ),
    );
  }
}
