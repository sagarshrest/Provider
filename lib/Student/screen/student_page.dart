import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Student/provider/student_provider.dart';

class StudentPage extends StatefulWidget {
  const StudentPage({super.key});

  @override
  State<StudentPage> createState() => _StudentPageState();
}

class _StudentPageState extends State<StudentPage> {
  @override

  void initState(){
    fetchStudent();
    super.initState();
  }

  void fetchStudent() {
    Provider.of<StudentProvider>(context, listen: false).fetchStudent();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Consumer<StudentProvider>(
            builder: (context, studentProvider, child) => 
            Expanded(
              child: ListView.builder(
                itemCount : studentProvider.studentlist.length,
                itemBuilder:(context, index) {

                  String name = studentProvider.studentlist[index].name;
                  String age = studentProvider.studentlist[index].age.toString();
                  String address = studentProvider.studentlist[index].address;
                  String id = studentProvider.studentlist[index].id;

                return Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.green,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Row(
                    children: [
                      Column(

                        children: [
                          Text('Name:$name'),
                          Text('Age:$age'),
                          Text('Address:$address')
                        ],
                      ),
                      Spacer(),

                      IconButton(onPressed: (){
                      }, icon: (Icon(Icons.edit))),
                      IconButton(onPressed: (){
                        studentProvider.delstudent(id);
                      }, icon: Icon(Icons.delete))
                    ],
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}