import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_exam/src/infrastructure/routes/route_names/route_names.dart';
import 'package:test_exam/src/infrastructure/routes/route_pages/route_pages.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
    title: 'insta view',
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    initialRoute: RouteNames.loading,
    getPages: RoutePages.pages,
  );
}
