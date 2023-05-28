import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/login_screen.dart';
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
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.backGround),),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Prototype Map", style: TextStyle(color: AppColor.mainColor , fontSize: 40), ),
              Wrap(
                children: [
                  StartChoose( Role: "Doctor", context: context,),
                  StartChoose( Role: "Receptionist", context: context,),
                  StartChoose( Role: "Nurse", context: context,),
                  StartChoose( Role: "Analysis Employee", context: context,),
                  StartChoose( Role: "Manger", context: context,),
                  StartChoose( Role: "HR", context: context,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
