import 'package:flutter/material.dart';
import 'package:hospital_app/controller/loading_function.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/view/login_screen.dart';

Padding StartChoose({required String? Role , required BuildContext context}) {

  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () async{
        await startApp(context);
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen() ));
      },
      child: Container(

        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all()
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(Role!, style: TextStyle(color: AppColor.mainColor , fontSize: 20), ),
        ),
      ),
    ),
  );
}

class SpecialistScreenButton extends StatelessWidget {
   SpecialistScreenButton({
    required this.logo,required this.text ,required this.hintText,required this.color,
    Key? key,
  }) : super(key: key);
  String logo;
  String text;
  String hintText;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(logo),
              Text(text),
              Text( hintText, style: TextStyle(fontSize: 10),),

            ],
          ),
        ),
      ),
    );
  }
}