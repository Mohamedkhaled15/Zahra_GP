import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:zahra_gp/presentation/resources/color_manager.dart';
import 'package:zahra_gp/presentation/resources/font_manager.dart';
import 'package:zahra_gp/presentation/resources/routes_manager.dart';
import 'package:zahra_gp/presentation/resources/styles_manager.dart';
import 'package:zahra_gp/presentation/resources/theme_manager.dart';
import 'package:firebase_core/firebase_core.dart';

import '../layout/shop_layout/cubit/cubit.dart';
import '../layout/shop_layout/cubit/state.dart';
import '../shared/constant/constant.dart';

class MyApp extends StatefulWidget {
//named constructor
  const MyApp._internal();

  static const MyApp _instance = MyApp._internal(); //singleton

  factory MyApp() => _instance; //factory
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ShopCubit>(
      create: (_) {
        if (userToken == null) {
          return ShopCubit();
        } else {
          return ShopCubit()..getUserData();
        }
      },
      child: BlocConsumer<ShopCubit, ShopStates>(
        listener: (ctx, state) {},
        builder: (ctx, state) {
          // ShopCubit cubit = ShopCubit.get(ctx);
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.splashRoute,
            theme: getAppTheme(),
          );
        },
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
