import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:so_teach/routes/app_pagess.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      defaultTransition: Get.defaultTransition,
      supportedLocales: const [Locale("en", "US")],
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      //home: MyHomePage(),
    );
  }
}


