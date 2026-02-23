import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier{
int count = 1;
void incre() 
{
count++;
notifyListeners();
}

}