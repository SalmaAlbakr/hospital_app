import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/view/start_up_screen.dart';

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
      home:  StartUpScreen(),
    );
  }
}
