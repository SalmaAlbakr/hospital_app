import 'package:flutter/material.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class SpecialistScreen extends StatelessWidget {
  const SpecialistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
       backgroundColor: Colors.white,
        title:  ListTile(
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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      SpecialistScreenButton(
                        heightPersint: 0.3,
                        logo: AppImages.callsLogo,
                        text: "Calls",
                        hintText: "You have new +1 Request",
                        color: Colors.blue,
                      ),
                      SpecialistScreenButton(
                        heightPersint: 0.2,
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
                        heightPersint: 0.2,
                      ),
                      SpecialistScreenButton(
                        heightPersint: 0.3,
                        logo: AppImages.fingerprintLogo,
                        text: "",
                        hintText: "attendance-leaving",
                        color: Colors.cyan,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange[900],
                      borderRadius: BorderRadius.circular(12), border: Border.all(
                      color: Colors.deepOrange,
                    ),),

                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cases",
                            style: TextStyle(color: Colors.white),
                          ),
                          Image.asset(AppImages.casesLogo),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
