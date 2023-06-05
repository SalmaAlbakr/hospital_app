import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/case_details.dart';

class CasesScreen extends StatelessWidget {
   CasesScreen({Key? key , required this.role}) : super(key: key);
   final String role;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Cases",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: ListView.builder(itemBuilder: (context , int i){
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
                    ],
                  ),
                ),
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
               Container(
                 width: 200,
                 child: ElevatedButton(
                   style: ButtonStyle(
                     backgroundColor: MaterialStateProperty.all(AppColor.lightGreenColor)
                   ),
                   onPressed: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => CaseDetailsScreen(role: role,),),);
                 }, child: Text("Show Details") ,),
               )
              ],
            ),
          ),
        );
      }),
    );
  }
}
