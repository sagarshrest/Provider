import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Student/provider/student_provider.dart';

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
          
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
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

                SizedBox(height: 30,),

                TextFormField(
                  controller: studentProvider.ageController,
                  decoration: InputDecoration(
                    hintText: "Age",
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 30,),
            
                TextFormField(
                  controller: studentProvider.addressController,
                  decoration: InputDecoration(
                    hintText: "Address",
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 30,),
            
                ElevatedButton(onPressed: (){
                 studentProvider.addstudent();
                 if (studentProvider.isSuccess) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content:Text("Student added Successfully")));
                 }
                 else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content:Text("Student added Successfully")));
                 }
                }, child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}