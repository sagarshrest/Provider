import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/listpage/list_provider.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<ListProvider>(builder: (context, listProvider,child){
          Students s1 = listProvider.studentlist[1];
          String? name = s1.name;
          String? rollnum = s1.rollnum;
          String? address = s1.address;
        
          return Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name??""),
              Text(rollnum??""),
              Text(address??""),
              
            ],
          );
        }),
      )
    );
  }
}