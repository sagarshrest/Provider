import 'package:flutter/material.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Name",
              border: OutlineInputBorder()
            ),
          ),

          TextFormField(
            decoration: InputDecoration(
              hintText: "Age",
              border: OutlineInputBorder()
            ),
          ),

          TextFormField(
            decoration: InputDecoration(
              hintText: "Address",
              border: OutlineInputBorder()
            ),
          )
        ],
      ),
    );
  }
}