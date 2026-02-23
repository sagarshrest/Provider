import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/data_parsing/profile.dart';
import 'package:provider1/home_page_provider.dart';
import 'package:provider1/home_provider.dart';
import 'package:provider1/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => HomeProvider())],
      child: MaterialApp(debugShowCheckedModeBanner: false,
        home: Profile(),
        ),
    );
      }
      }
    
      