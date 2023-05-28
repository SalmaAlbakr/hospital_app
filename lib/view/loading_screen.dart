import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/var_of_image.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double num = 0.0;

  @override
  void initState() {
    _addValue();
    super.initState();
  }

  void _addValue() {
    Future.delayed(Duration(milliseconds: 200), () {
      if (num > 1) return;
      setState(() {
         num += 0.1;
      });
      _addValue();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backGround),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.logo),
              SizedBox(
                height: 20,
              ),
              Text(
                "Hospital System",
                style: TextStyle(color: AppColor.mainColor, fontSize: 30),
              ),
              SizedBox(
                height: 300,
              ),
              Container(
                width: 300,
                child: LinearProgressIndicator(
                  value: num,
                  color: AppColor.mainColor,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Loading ...",
                style: TextStyle(color: AppColor.mainColor, fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
