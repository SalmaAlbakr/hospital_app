import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/calls_screen.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class SpecialistScreen extends StatelessWidget {
  SpecialistScreen({Key? key, required this.role}) : super(key: key);
  String role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: ListTile(
          leading: Image.asset(AppImages.logo),
          title: Text("The Name"),
          subtitle: Text(role),
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
                      // first
                    role == "HR" ?
                    SpecialistScreenButton(
                      onTap: (){},
                      heightPersint: 0.3,
                      logo: AppImages.employeeLogo,
                      text: "Employee",
                      hintText: "You have new +1 Request",
                      color: AppColor.deepOrangeColor,) :
                        role == "Doctor" || role == "Nurse" || role == "Receptionist"?
                    SpecialistScreenButton(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CallsScreen(role: role,),),);
                      },
                        heightPersint: 0.3,
                        logo: AppImages.callsLogo,
                        text: "Calls",
                        hintText: "You have new +1 Request",
                        color: AppColor.blueColor,
                      ) :
                        SpecialistScreenButton(
                          onTap: (){},
                          heightPersint: 0.3,
                          logo: AppImages.casesLogo,
                          text: "Cases",
                          hintText: "You have new +1 Request",
                          color: AppColor.blueColor,
                        ),

                      // second
                      SpecialistScreenButton(
                        onTap: (){},
                        heightPersint: 0.2,
                        logo: AppImages.reportsLogo,
                        text: "Reports",
                        hintText: "You have new +3 Request",
                        color: AppColor.purpleColor,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SpecialistScreenButton(
                        onTap: (){},
                        logo: AppImages.tasksLogo,
                        text: "Tasks",
                        hintText: "You have new +1 Task",
                        color: AppColor.deepGreenColor,
                        heightPersint: 0.2,
                      ),
                      SpecialistScreenButton(
                        onTap: (){},
                        heightPersint: 0.3,
                        logo: AppImages.fingerprintLogo,
                        text: "",
                        hintText: "attendance-leaving",
                        color: AppColor.cyanColor,
                      ),
                    ],
                  ),
                ],
              ),
            role == "Doctor" || role == "Nurse"   ?
            Padding(
                padding: const EdgeInsets.all(8.0),
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
                          "Cases",
                          style: TextStyle(color: Colors.white),
                        ),
                        Image.asset(AppImages.casesLogo),
                      ],
                    ),
                  ),
                ),
              ) :
            role == "Manger" ?  Padding(
              padding: const EdgeInsets.all(8.0),
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
                        "Employee",
                        style: TextStyle(color: Colors.white),
                      ),
                      Image.asset(AppImages.employeeLogo),
                    ],
                  ),
                ),
              ),
            ) :
            SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
