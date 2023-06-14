import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/view/attendance%20and%20leaving/touch_id_screen.dart';
import 'package:hospital_app/view/calls_screen.dart';
import 'package:hospital_app/view/creat_call_screen.dart';
import 'package:hospital_app/view/create_call_screen.dart';
import 'package:hospital_app/view/profile_compeleted.dart';
import 'package:hospital_app/view/profile_screen.dart';
import 'package:hospital_app/view/reports.dart';
import 'package:hospital_app/view/start_up_screen.dart';
import 'package:hospital_app/view/tasks.dart';
import 'package:hospital_app/view/widget/notification_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColor.mainColor),
          ),
        ),
      ),
      home:  CreateCall2Screen(),
    );
  }
}
