import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/var_of_image.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

 final TextEditingController phoneController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Stack(children: [
        Image.asset(AppImages.backGround),
        Center(
          child: SingleChildScrollView(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(AppImages.logo),
                Text(
                  "Welcome back !",
                  style: TextStyle(color: AppColor.mainColor, fontSize: 30),
                ),
                Text(
                  "To Continue , Login Now",
                  style: TextStyle(color: Colors.black45, fontSize: 20),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.mainColor,
                        ),
                      ),

                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),

                      hintText: "Phone Number",
                      prefixIcon: Icon(
                        Icons.local_phone_outlined,
                        color: AppColor.mainColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColor.mainColor,
                        ),
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: AppColor.mainColor,
                      ),
                      suffixIcon: IconButton(


                        color: AppColor.mainColor, onPressed: () {}, icon: Icon(Icons.remove_red_eye_outlined,),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forget Password ?",
                        style: TextStyle(fontSize: 12, color: Colors.black ,
                          decoration: TextDecoration.underline,),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Login"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(AppColor.mainColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}