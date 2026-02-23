import 'package:flutter/material.dart';

class UpdateProfile extends StatefulWidget {
  String name;
  int age;
  String address;
  UpdateProfile({super.key,
  required this.name,
  required this.age,
  required this.address});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
@override
  void initState() {
    namecontroller.text = widget.name;
    agecontroller.text = widget.age.toString();
    addresscontroller.text = widget.address;
    super.initState();
  }

  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Update Profile",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 24),
              TextFormField(
                controller: namecontroller,
                decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 16),
              TextFormField(
                controller: agecontroller,
                decoration: InputDecoration(
                  labelText: "Age",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 16),
              TextFormField(
                controller: addresscontroller,
                decoration: InputDecoration(
                  labelText: "Address",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 24),
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Go Back"))
            ],
          ),
        ),
      ),
    );
  }
}