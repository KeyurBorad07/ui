import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/WhatApp/appbar.dart';
import 'package:ui/drawer.dart';
import 'package:ui/drop_down.dart';
import 'package:ui/show_modal_bottom_sheet.dart';
import 'package:ui/text_form_field.dart';
import 'package:ui/text_gradient.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: ShowModalBottomSheetDemo(),
        );
      },
    );
  }
}
