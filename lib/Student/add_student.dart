import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Student/student_provider.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({super.key});

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<StudentProvider>(
        
        builder: (context, studentProvider, child) => 
        Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: studentProvider.nameController,
                decoration: InputDecoration(
                  hintText: "Name",
                  border: OutlineInputBorder()
                ),
              ),
          
              TextFormField(
                controller: studentProvider.ageController,
                decoration: InputDecoration(
                  hintText: "Age",
                  border: OutlineInputBorder()
                ),
              ),
          
              TextFormField(
                controller: studentProvider.addressController,
                decoration: InputDecoration(
                  hintText: "Address",
                  border: OutlineInputBorder()
                ),
              ),

              ElevatedButton(onPressed: (){

              }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}