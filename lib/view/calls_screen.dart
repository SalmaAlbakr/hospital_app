import 'package:flutter/material.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/view/widget/my_widgets.dart';

class CallsScreen extends StatelessWidget {
  CallsScreen({required this.role, Key? key}) : super(key: key);
  final String role;
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
            role == SpecialistVar.Receptionist
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
                        onPressed: () {},
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
                      role: role,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
