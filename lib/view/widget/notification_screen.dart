import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification" , style: TextStyle(
          color: Colors.black
        ),),
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white38,
        elevation: 0,
      ),
    body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context , i ){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Container(
                            width: MediaQuery.of(context).size.width *0.2,
                            child: Image.asset("assets/image/name.png")),
                        title: Text("Ebrahem Khaled"),
                        subtitle: Text("You have New Call From Manger"),
                      ),
                    ),
                    Text("2/5/2011" , style: TextStyle(
                      fontSize: 10
                    ),),
                    Icon(Icons.circle, color: AppColor.lightGreenColor, size: 15,),
                  ],
                ),
              ),
            ),
          );

        }),

    // body: Expanded(
    //   child: ListView.builder(
    //       itemCount: 5,
    //       itemBuilder: (context , int i) {
    //     return Container(
    //       child: ListTile(
    //         // leading: Image.asset("assets/image/name.png"),
    //         // title: Text("Ebrahem Khaled"),
    //         // subtitle: Text("You have New Call From Manger"),
    //         // trailing: Row(
    //         //   children: [
      //         Text("data"),
    //         //     Icon(Icons.circle, color: AppColor.lightGreenColor,),],
    //         // ),
    //       ),
    //     );
    //   }),
    // ),
    );
  }
}
