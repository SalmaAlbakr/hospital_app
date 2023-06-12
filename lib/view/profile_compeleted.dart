import 'package:flutter/material.dart';

class ProfileConfirmedScreen extends StatelessWidget {
  const ProfileConfirmedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(child: Column(
            children: [
              Image.asset(""),
              Text(""),
              SizedBox(height:40),ElevatedButton(
                onPressed: () {},
                child: Text("Back to home"),
              ),
            ],

          ),),
        ),
      ),
    );
  }
}
