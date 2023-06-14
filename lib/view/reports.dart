import 'package:flutter/material.dart';
import 'package:hospital_app/theme/main_color.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class RebortsScreen extends StatefulWidget {
  RebortsScreen({Key? key}) : super(key: key);
  //final String role;

  @override
  State<RebortsScreen> createState() => _RebortsScreenState();
}

class _RebortsScreenState extends State<RebortsScreen> {
//  DateTime? selectedDate;
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
  }

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  bool done = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Reports",
          style: TextStyle(color: Colors.black87),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            //widget.role == SpecialistVar.Receptionist?
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "24.4.2021",
                      suffixIcon: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.grey[700]),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container();
                              });
                        },
                        child: Icon(Icons.calendar_month_outlined),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, int i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              children: [Icon(Icons.verified_outlined),
                                SizedBox(width: 10,),
                                Text("Report Name"),
                                Expanded(child: SizedBox()),
                                done == true ?
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColor.lightGreenColor,
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Finished"),
                                  ),) :
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: AppColor.orange,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("process"),
                                  ),)
                              ],
                            ),
                            Row(children: [Icon(Icons.calendar_month_outlined),
                              SizedBox(width: 10,),
                              Text("24-10-2022"),
                            ],)
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
