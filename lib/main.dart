import 'package:flutter/material.dart';
import 'package:hospital_app/view/calls_screen.dart';
import 'package:hospital_app/view/loading_screen.dart';
import 'package:hospital_app/view/login_screen.dart';
import 'package:hospital_app/view/specialist_screen.dart';
import 'package:hospital_app/view/start_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: SpecialistScreen(),
    );
  }
}

