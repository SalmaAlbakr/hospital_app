import 'package:flutter/material.dart';
import 'package:hospital_app/controller/loading_function.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/login_screen.dart';

Padding StartChoose({required String? Role, required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () async {
        await startApp(context);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => LoginScreen(role: Role),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), border: Border.all()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Role!,
            style: TextStyle(color: AppColor.mainColor, fontSize: 20),
          ),
        ),
      ),
    ),
  );
}

class SpecialistScreenButton extends StatelessWidget {
  SpecialistScreenButton({
    required this.logo,
    required this.text,
    required this.hintText,
    required this.color,
    required this.heightPersint,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String logo;
  final String text;
  final String hintText;
  final Color color;
  final double heightPersint;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: color),
          ),
          height: MediaQuery.of(context).size.height * heightPersint,
          width: MediaQuery.of(context).size.width * 0.43,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(logo),
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  hintText,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CallsWidget extends StatelessWidget {
  CallsWidget({
    required this.role,
    Key? key,
  }) : super(key: key);
  final bool caseDone = false;
  final String role;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.white,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(AppImages.personLogo),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Patient Name",
                  ),
                  Expanded(child: SizedBox()),
                  role == SpecialistVar.Receptionist
                      ? caseDone
                          ? Icon(
                              Icons.check_circle,
                              color: AppColor.lightGreenColor,
                            )
                          : Image.asset(AppImages.progressLogo)
                      : SizedBox()
                ],
              ),
            ),
            role == SpecialistVar.Nurse
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(AppImages.doctorLogo),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Dr. Salma Ali",
                        )
                      ],
                    ))
                : SizedBox(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(AppImages.DateLogo),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "24 . 4 . 2021",
                  ),
                ],
              ),
            ),
            role == SpecialistVar.Receptionist
                ? SizedBox()
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColor.lightGreenColor,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.check_circle_outline_rounded,
                              ),
                              Text("Accept")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              AppColor.lightOrangeColor,
                            ),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.cancel_outlined),
                              Text("Busy"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

Padding Details({required String MainText, required String Details}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          MainText,
          style: TextStyle(color: Colors.grey),
        ),
        Text(Details),
      ],
    ),
  );
}

class LastSpecialistButton extends StatelessWidget {
  LastSpecialistButton({
    required this.onTap,
    required this.logo,
    required this.hintText,
    Key? key,
    required this.role,
  }) : super(key: key);

  final String role;
  final String logo;
  final String hintText;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: AppColor.deepOrangeColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColor.deepOrangeColor,
            ),
          ),
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hintText,
                  style: TextStyle(color: Colors.white),
                ),
                Image.asset(logo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
