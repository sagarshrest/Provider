
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Student/model/student.dart';
import 'package:provider1/Student/provider/student_provider.dart';

class UpdateStudent extends StatefulWidget {
  final String id;
  final String name;
  final String age;
  final String address;
  
  const UpdateStudent({
    required this.id,
    required this.name,
    required this.age,
    required this.address,
    super.key});

  @override
  State<UpdateStudent> createState() => _UpdateStudentState();
}

class _UpdateStudentState extends State<UpdateStudent> {

late final TextEditingController _nameController;
late final TextEditingController _ageController;
late final TextEditingController _addressController;

 



  @override

void initState () {
  _nameController = TextEditingController(text: widget.name);
  _ageController = TextEditingController(text: widget.age);
  _addressController = TextEditingController(text: widget.address);
}

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
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 30,),

                TextFormField(
                  controller: _ageController,
                  decoration: InputDecoration(
                    hintText: "Age",
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 30,),
            
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    hintText: "Address",
                    border: OutlineInputBorder()
                  ),
                ),

                SizedBox(height: 30,),
            
                ElevatedButton(onPressed: () async {
                  bool success = await 
                 studentProvider.updatestudent(
                  id: widget.id,
                  student:Student(name: _nameController.text.trim(),
                  age: int.parse(_ageController.text.trim()),
                  address: _addressController.text.trim(),
                  id: widget.id)
                 );
                 if (!context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("nothing to Update")));
                 }

                  if (success) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Successfully Updated"))
                    );
                    Navigator.pop(context);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed")));
                  }

                 }
                , child: Text("Update Student"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
