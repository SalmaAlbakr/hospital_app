import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';

Future startApp(BuildContext context) async {

  showDialog(context: context, builder: (context){
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/image/backGroundImage.png"),),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/logo.png"),
              SizedBox(height: 20,),
              Text("Hospital System", style: TextStyle(color: AppColor.mainColor , fontSize: 30 ), ),
              SizedBox(
                height: 300,
              ),
              Container(
                width: 300,
                child: LinearProgressIndicator(
                  color: AppColor.mainColor,
                  backgroundColor: Colors.grey[300],
                ),
              ),
              SizedBox(height: 20,),

              Text("Loading ...", style: TextStyle(color: AppColor.mainColor , fontSize: 20), ),
            ],
          ),
        ),
      ),
    );
  });
  print("the code finish");
  Navigator.of(context).pop();
}