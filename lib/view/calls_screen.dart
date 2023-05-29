import 'package:flutter/material.dart';
import 'package:hospital_app/theme/var_of_image.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Calls",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, int i) {
            return CallsWidget();
          }),
    );
  }
}
