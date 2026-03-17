import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/Provider/home_provider.dart';

class HomePageProvider extends StatefulWidget {
  const HomePageProvider({super.key});

  @override
  State<HomePageProvider> createState() => _HomePageProviderState();
}

class _HomePageProviderState extends State<HomePageProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<HomeProvider>(
        builder: (context, HomeProvider, child) =>
        Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("This is from provider:${HomeProvider.count}"),
              IconButton(onPressed: (){
                HomeProvider.incre();
              }, icon: Icon(Icons.add))
            ],
          ),
        ),
      ),
    );
  }
}