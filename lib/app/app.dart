import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:zahra_gp/presentation/resources/color_manager.dart';
import 'package:zahra_gp/presentation/resources/font_manager.dart';
import 'package:zahra_gp/presentation/resources/routes_manager.dart';
import 'package:zahra_gp/presentation/resources/styles_manager.dart';
import 'package:zahra_gp/presentation/resources/theme_manager.dart';
import 'package:firebase_core/firebase_core.dart';

class MyApp extends StatefulWidget {
//named constructor
  MyApp._internal();
  static final MyApp _instance= MyApp._internal();//singleton

  factory MyApp()=> _instance;//factory
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.mainRoute,
      theme: getAppTheme(),

    );



  }
}

