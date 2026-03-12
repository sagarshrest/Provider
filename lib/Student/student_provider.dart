import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class StudentProvider extends ChangeNotifier
{
final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final TextEditingController nameController = TextEditingController();
final TextEditingController ageController = TextEditingController();
final TextEditingController addressController = TextEditingController();
void addstudent() async{
  
}
}
