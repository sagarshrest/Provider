import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/listpage/list_provider.dart';

class Formpage extends StatefulWidget {
  const Formpage({super.key});

  @override
  State<Formpage> createState() => _FormpageState();
}

class _FormpageState extends State<Formpage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ListProvider>(
        builder: (context, listProvider, child) => 
        Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  TextFormField(
                    controller: listProvider.namecontroller,
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Please enter your name";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder(),
                    ),
                  ),
          
                  SizedBox(height: 16,),
                  TextFormField(
                    validator: (value) {
                      if ( value!.isEmpty ||
                      int.parse(value)<=0||
                      int.parse(value)>=100){
                        return "Please enter a valid age";
                      } else {
                        return null;
                      }
                    },
                    controller:listProvider.agecontroller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Age",
                      border: OutlineInputBorder(),
                    ),
                  ),
          
                  SizedBox(height: 16,),
                  TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please enter your address";
                      } else {
                        return null;
                      }
                    },
                    controller:listProvider.addresscontroller,
                    decoration: InputDecoration(
                      labelText: "Address",
                      border: OutlineInputBorder(),
                    ),
                  ),
        
                  SizedBox(height: 16,),
                  
                  Consumer<ListProvider>(
                    builder: (context, value, child) => 
                    ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("The Form is Submitted"),
                          )
                        );
                       listProvider.unsubmit();
                      }
        
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            content: Text("Please fill the form correctly"),
                          )
                        );
                      }
                    }, child: Text("Submit")),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}