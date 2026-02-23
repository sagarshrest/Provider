import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int incre = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(incre.toString()),
            IconButton(onPressed: (){
              setState(() {
                incre++;
              });
              
            }, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}