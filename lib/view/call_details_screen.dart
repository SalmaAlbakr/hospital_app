import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/var_of_image.dart';

class CallDetailsScreen extends StatelessWidget {
  const CallDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Call Details",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset(AppImages.logo),
              title: Text("The Name"),
              subtitle: Text("Manger" , style: TextStyle(color: AppColor.mainColor),),
              trailing: Text("13 Mar 2020"),
            ),
            Text("Details note : Lorem Ipsum is simply dummy text of printing and typesetting industry.Lorem Ipsum"),
            Row(
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
