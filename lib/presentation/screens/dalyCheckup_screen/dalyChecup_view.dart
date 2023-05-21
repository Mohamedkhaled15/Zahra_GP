import 'package:flutter/material.dart';
import 'package:zahra_gp/presentation/resources/color_manager.dart';

class DalyCheckupView extends StatelessWidget {
  const DalyCheckupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: Center(child: Text("dalychekup"),),
    );
  }
}
