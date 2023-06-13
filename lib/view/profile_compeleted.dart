import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';

class ProfileConfirmedScreen extends StatelessWidget {
  const ProfileConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: SizedBox()),
                Image.asset("assets/image/Group 4460.png"),
                Text(
                  "The request has been canceled successfully",
                  style: TextStyle(color: AppColor.lightGreenColor),
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Back to home"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
