import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/attendance%20and%20leaving/touch_id_screen.dart';

class AttendanceScreen extends StatelessWidget {
   AttendanceScreen({Key? key, required this.role}) : super(key: key);
  final String role;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white30,
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Attendance" , style: TextStyle(fontSize: 20),),
                          SizedBox(height: 7,),
                          Text("09 : 00 am" , style: TextStyle(color: AppColor.mainColor),),
                          SizedBox(height: 7,),
                          ElevatedButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TouchIDScreen(),),);
                          }, child: Icon(Icons.arrow_right_alt_outlined),),
                        ],
                      ),
                      Icon(Icons.check_circle, color: AppColor.lightGreenColor,),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Leaving" , style: TextStyle(fontSize: 20),),
                          SizedBox(height: 7,),
                          Text("04 : 00 pm" , style: TextStyle(color: AppColor.mainColor),),
                          SizedBox(height: 7,),
                          ElevatedButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TouchIDScreen(),),);
                          }, child: Icon(Icons.arrow_right_alt_outlined),),
                        ],
                      ),
                      Icon(Icons.cancel , color: AppColor.orange,),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
