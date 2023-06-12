import 'package:flutter/material.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class CallsScreen extends StatefulWidget {
  CallsScreen({required this.role, Key? key}) : super(key: key);
  final String role;

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  DateTime? selectedDate;
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            widget.role == SpecialistVar.Receptionist
                ? Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.grey[700]),
                              ),
                              onPressed: () {},
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
                        onPressed: () {showModalBottomSheet(context: context, builder: (context){
                          return SizedBox(
                              height: 0.6,
                              child: Column(
                              children: <Widget>[
                              TableCalendar(
                              firstDay: DateTime(2000),
                          lastDay: DateTime(2050),
                          focusedDay: DateTime.now(),
                          calendarFormat: CalendarFormat.month,
                          calendarStyle: CalendarStyle(
                          selectedDecoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          shape: BoxShape.circle,
                          ),
                          todayDecoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                          ),
                          ), ),];
                        });
                          },
                        child: Icon(Icons.add),
                      ),
                    ],
                  )
                : SizedBox(),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, int i) {
                    return CallsWidget(
                      role: widget.role,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

/*
class MyBottomSheetState extends State<MyBottomSheet> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }*/
