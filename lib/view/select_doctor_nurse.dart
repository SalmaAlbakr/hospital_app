import 'package:flutter/material.dart';
import 'package:hospital_app/theme/specialist-var.dart';
import 'package:hospital_app/theme/var_of_image.dart';

class SelectedScreen extends StatefulWidget {
  final String role;
  SelectedScreen({Key? key, required this.role}) : super(key: key);

  @override
  State<SelectedScreen> createState() => _SelectedScreenState();
}

class _SelectedScreenState extends State<SelectedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.close,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: widget.role == SpecialistVar.Doctor
            ? Text(
                "Select Nurse",
                style: TextStyle(color: Colors.black87),
              )
            : Text(
                "Select Doctor",
                style: TextStyle(color: Colors.black87),
              ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
                hintText: widget.role == SpecialistVar.Doctor
                    ? "Search for Nurse"
                    : "Search for doctors",
              ),
            ),
            widget.role == SpecialistVar.Manger
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("All"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Doctor"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Nurse"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("HR"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Receptionist"),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Analysis Employee"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                : SizedBox(),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, int i) {
                    return Container(
                      child: ListTile(
                        leading: Image.asset(AppImages.doctorLogo),
                        title: Text("Doctor Name"),
                        subtitle: Text("Specialist - Doctor"),
                        trailing: Icon(Icons.circle_outlined),
                      ),
                    );
                  }),
            ),
            widget.role == SpecialistVar.Doctor
                ? Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Select Nurse"),
                    ),
                  )
                : Container(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Select Doctor"),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
