import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.whiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.whiteColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Create Call",
          style: TextStyle(color: Colors.black54),
        ),
      ),
      body: SafeArea(
        child: Center(
          child:ListView(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Patient Name",
                  border: OutlineInputBorder(
                    borderSide: BorderSide()
                  )
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "age",
                  border: OutlineInputBorder(
                    borderSide: BorderSide()
                  )
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "phone Number",
                  border: OutlineInputBorder(
                    borderSide: BorderSide()
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
