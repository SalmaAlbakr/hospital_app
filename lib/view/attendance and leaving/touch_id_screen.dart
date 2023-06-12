import 'package:flutter/material.dart';
import 'package:hospital_app/theme/var_of_image.dart';

class TouchIDScreen extends StatefulWidget {
  const TouchIDScreen({Key? key}) : super(key: key);

  @override
  State<TouchIDScreen> createState() => _TouchIDScreenState();
}

class _TouchIDScreenState extends State<TouchIDScreen> {
  final bool done = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.packGroundIDLogo),
              fit: BoxFit.cover,
            ),
          ),
          child: done == true
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.done),
                    Text(
                      "Your attendance has been registered",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(AppImages.back),
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.finger),
                    Text(
                      "Please touch ID sensor to verify registration",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
