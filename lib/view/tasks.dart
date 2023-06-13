import 'package:flutter/material.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class TasksScreen extends StatefulWidget {
  TasksScreen({required this.role, Key? key}) : super(key: key);
  final String role;

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
//  DateTime? selectedDate;
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
  }

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "Tasks",
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
              ],
            )
        ],

        ),
      ),
    );
  }

}
