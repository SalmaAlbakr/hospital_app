//import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/theme/var_of_image.dart';

class AddNewUserScreen extends StatefulWidget {
  const AddNewUserScreen({Key? key}) : super(key: key);

  @override
  State<AddNewUserScreen> createState() => _AddNewUserScreenState();
}

class _AddNewUserScreenState extends State<AddNewUserScreen> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  String selectedGender = 'Gender';
  List<String> gender = ['Gender', 'Male', 'Female'];
  String selectedSpecialist = 'Specialist';
  List<String> Specialist = [
    'Specialist',
    SpecialistVar.Nurse,
    SpecialistVar.Manger,
    SpecialistVar.Doctor,
    SpecialistVar.Receptionist,
    SpecialistVar.AnalysisEmployee,
    SpecialistVar.HR
  ];
  TextEditingController DateOfBirthController = TextEditingController();
  String selectedStatues = 'Statues';
  List<String> statues = ['Statues', 'Married', 'Single'];
  TextEditingController PhoneNumberController = TextEditingController();
  TextEditingController e_mailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.backGround),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "New User",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: firstNameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.mainColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  hintText: "First Name",
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: AppColor.mainColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: lastNameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.mainColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  hintText: "Last Name",
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: AppColor.mainColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Image.asset(AppImages.genderLogo),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          underline: Container(),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          value: selectedGender,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedGender = newValue!;
                            });
                          },
                          isExpanded: true,
                          items: gender.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Image.asset(AppImages.specialLogo),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          underline: Container(),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          value: selectedSpecialist,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedSpecialist = newValue!;
                            });
                          },
                          isExpanded: true,
                          items: Specialist.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: DateTimePicker(
            //     decoration: InputDecoration(
            //       prefixIcon: Icon(
            //         Icons.calendar_month_outlined,
            //         color: AppColor.mainColor,
            //       ),
            //       labelText: "Date of birth",
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(
            //           Radius.circular(15),
            //         ),
            //       ),
            //     ),
            //     calendarTitle: "Date",
            //     style: const TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 15,
            //     ),
            //     firstDate: DateTime.now(),
            //     lastDate: DateTime(2095),
            //     controller: DateOfBirthController,
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Image.asset(AppImages.careLogo),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          underline: Container(),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          value: selectedStatues,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedStatues = newValue!;
                            });
                          },
                          isExpanded: true,
                          items: statues.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: PhoneNumberController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.mainColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  hintText: "Phone Number",
                  prefixIcon: Icon(
                    Icons.local_phone_outlined,
                    color: AppColor.mainColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: e_mailController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.mainColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "E-mail",
                  prefixIcon: Icon(
                    Icons.mail_outline_outlined,
                    color: AppColor.mainColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: addressController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.mainColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Address",
                  prefixIcon: Icon(
                    Icons.location_on_outlined,
                    color: AppColor.mainColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.mainColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  hintText: "Password",
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: AppColor.mainColor,
                  ),
                  suffixIcon: IconButton(
                    color: AppColor.mainColor,
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Create User"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
