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
}