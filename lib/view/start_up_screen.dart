import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class StartUpScreen extends StatefulWidget {
  StartUpScreen({Key? key}) : super(key: key);

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backGround),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Prototype Map",
                style: TextStyle(color: AppColor.mainColor, fontSize: 40),
              ),
              Wrap(
                children: [
                  StartChoose(
                    Role: SpecialistVar.Doctor,
                    context: context,
                  ),
                  StartChoose(
                    Role: SpecialistVar.Receptionist,
                    context: context,
                  ),
                  StartChoose(
                    Role: SpecialistVar.Nurse,
                    context: context,
                  ),
                  StartChoose(
                    Role: SpecialistVar.AnalysisEmployee,
                    context: context,
                  ),
                  StartChoose(
                    Role: SpecialistVar.Manger,
                    context: context,
                  ),
                  StartChoose(
                    Role: SpecialistVar.HR,
                    context: context,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
