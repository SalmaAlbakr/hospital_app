import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class CaseDetailsScreen extends StatelessWidget {
   CaseDetailsScreen({Key? key , required this.role}) : super(key: key);

  String role;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Case Details",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Case"),
                    ),
                  ),
                ),
               role == "Nurse" ? SizedBox(width: 0,) : Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text("medical Record"),
                  ),
                ),
             role ==  "Analysis Employee" ? SizedBox(width: 0,) : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("Medical measurement"),
                    ),
                  ),
                ),
                Expanded(child: SizedBox() ) ,
                role == "Nurse" ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(AppImages.indLogo),
                  ),
                ) :
                role ==  "Analysis Employee" ?Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Image.asset(AppImages.medicalLogo),
                  ),
                ) : SizedBox(width: 0,)
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Details(MainText: "Patient Name", Details: "Ebrahem Khaled"),
                  Details(MainText: "Age", Details: "24 years"),
                  Details(MainText: "Phone Number", Details: "011785558945"),
                  Details(MainText: "Date", Details: "24 . 4 . 2021"),
                  Details(MainText: "Doctor", Details: "Salma Ahmed"),
                  Details(MainText: "Nurse", Details: "Ali islam"),
                  Details(MainText: "Status", Details: "Process"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Case Description",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s ",
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          role == "Doctor" ?  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        Text("Add Nurse"),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        Text("Request"),
                      ],
                    ),
                  ),
                ),
              ],
            ) : SizedBox(),
            Expanded(child: SizedBox()),
            role == "Doctor" ? Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppColor.redColor),
                ),
                onPressed: () {},
                child: Text("End Case"),
              ),
            ) :
            role == "Nurse" ? Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Call Doctor"),
              ),
            ) : SizedBox()
          ],
        ),
      ),
    );
  }
}
