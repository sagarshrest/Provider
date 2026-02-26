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
      body: Consumer <ListProvider>(builder: (context, listProvider, child) => Column(
        children: [
          Text("name:${listProvider.name}"),
          Text("name:${listProvider.age}"),
          Text("name:${listProvider.address}")
        ],
      )),
    );
  }
}