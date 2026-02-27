import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier{
  String name = '';
  int age = 0;
  String address = '';

  void submitForm ({required String name,required int?age,required String?address}){
    this.name = name;
    this.age = age ?? 0;
    this.address = address ?? '';
    print('The name is $name');
    print('The age is $age');
    print('The address is $address');
  }

final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();

void unsubmit ()
{
  print(namecontroller.text);
  print(agecontroller.text);
  print(addresscontroller.text);
}

  List<Students> studentlist = [
    Students(name: "Sagar", rollnum: "35", address: "Panauti"),
    Students(name: "Pramesh", rollnum: "30", address: "Banepa"),
    Students(name: "Ishan", rollnum: "25", address: "Nala"),
    
  ];

}

class Students{
  String? name;
  String? rollnum;
  String? address;

  Students({required this.name, required this.rollnum, required this.address});

}