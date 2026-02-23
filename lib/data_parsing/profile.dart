import 'package:flutter/material.dart';
import 'package:provider1/data_parsing/update_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String name = "Saagar Shrestha";
  int age = 26;
  String address = "Panauti";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name : Saagar Shrestha"),
            Text("Age : 26"),
            Text("Address : Panauti"),
            ElevatedButton(onPressed: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context)=> UpdateProfile(name: name, age: age, address: address,)),);
            // Navigator.pushAndRemoveUntil(context,
            // MaterialPageRoute(builder: (context)=> UpdateProfile(name: name, age: age, address: address,)), 
            // (route)=> false);
            }, child: Text("Edit Profile"))
          ],
        ),
      ),
    );
  }
}