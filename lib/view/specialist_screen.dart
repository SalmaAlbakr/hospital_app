import 'package:flutter/material.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class SpecialistScreen extends StatelessWidget {
  const SpecialistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(AppImages.logo),
              title: Text("The Name"),
              subtitle: Text("Specialist Doctor"),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    SpecialistScreenButton(
                      logo: AppImages.callsLogo,
                      text: "Calls",
                      hintText: "You have new +1 Request",
                      color: Colors.blue,
                    ),
                    SpecialistScreenButton(
                      logo: AppImages.reportsLogo,
                      text: "Reports",
                      hintText: "You have new +3 Request",
                      color: Colors.deepPurpleAccent,
                    ),
                  ],
                ),
                Column(
                  children: [
                    SpecialistScreenButton(
                      logo: AppImages.tasksLogo,
                      text: "Tasks",
                      hintText: "You have new +1 Task",
                      color: Colors.green,
                    ),
                    SpecialistScreenButton(
                      logo: AppImages.fingerprintLogo,
                      text: "",
                      hintText: "attendance-leaving",
                      color: Colors.cyan,
                    ),
                  ],
                ),
              ],
            ),
            SpecialistScreenButton(
              logo: AppImages.casesLogo,
              text: "Cases",
              hintText: "",
              color: Colors.orange[900],
            ),
          ],
        ),
      ),
    );
  }
}
