import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/data_parsing/profile.dart';
import 'package:provider1/home_page_provider.dart';
import 'package:provider1/home_provider.dart';
import 'package:provider1/homepage.dart';
import 'package:provider1/listpage/display_page.dart';
import 'package:provider1/listpage/formpage.dart';
import 'package:provider1/listpage/list_page.dart';
import 'package:provider1/listpage/list_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => ListProvider())
        ],
      child: MaterialApp(debugShowCheckedModeBanner: false,
        home: Display(),
        ),
    );
      }
      }
    
      