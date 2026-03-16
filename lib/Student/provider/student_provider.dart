import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider1/Student/model/student.dart';

class StudentProvider extends ChangeNotifier
{
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final TextEditingController nameController = TextEditingController();
final TextEditingController ageController = TextEditingController();
final TextEditingController addressController = TextEditingController();

bool isSuccess = false;

List <Student> studentlist = [];

void addstudent() async{
  try {
    await _firestore.collection('students').add({
      'name': nameController.text.trim(),
      'age': int.parse(ageController.text.trim()),
      'address': addressController.text.trim(),
    });
    isSuccess = true;
  }
    on FirebaseException catch (e) {
      print('Error adding Students: ${e.message}');
      isSuccess = false;
    }

    notifyListeners();
  }

  void fetchStudent() async {
    try {
      studentlist.clear();
      await _firestore.collection('students').get().then((data){
        
        for (var student in data.docs) {
          studentlist.add(
            Student(
              id: student.id,
            name: student["name"],
            age: student["age"] ,
           address: student["address"]),
           
           );
           print(student);
           notifyListeners();
        }
        notifyListeners();
        
      });
      notifyListeners();
    } catch (e) {
      print('Error fetching Students: ${e.toString()}');
    }
    notifyListeners();
  }

void delstudent(String id) async {
  try {
    await _firestore.collection('students').doc(id).delete();
studentlist.clear();  
    fetchStudent();
    notifyListeners();
  }
  catch (e) {
    print(e.toString());

  }
}

}

