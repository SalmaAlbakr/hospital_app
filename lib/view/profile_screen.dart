import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:AppColor.mainColor,
      appBar: AppBar(
        backgroundColor: AppColor.mainColor,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              CircleAvatar(
                radius: 50,
                child: Image.asset("assets/image/name.png"),
              ),
              SizedBox(height: 10,),
              Container(
                height: 370,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),

                  color: Colors.white
                ),
                child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Ebrahim Elzieny",style: TextStyle(color: AppColor.mainColor),),
                    SizedBox(height: 20,),
                    ProfileLine(icon: Icon(Icons.camera_alt), text: 'Specilist- Doctor',),

                    ProfileLine(icon: Icon(Icons.transgender), text: 'Male',),

                    ProfileLine(icon: Icon(Icons.calendar_month_outlined), text: '29-30-78',),

                    ProfileLine(icon: Icon(Icons.location_on_outlined), text: 'Mansura- shebien',),

                    ProfileLine(icon: Icon(Icons.favorite_border), text: 'Sigle',),

                    ProfileLine(icon: Icon(Icons.inbox_outlined), text: 'EbrahimElzieny@gmail.com',),

                    ProfileLine(icon: Icon(Icons.phone), text: '0115874699',),
                  ],
                ),
              )
                /*Column(
                children: [

                  ],
              )*/,)
            ],
          ),
        ),
      ),
    );
  }
}
