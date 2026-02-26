import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/listpage/display_page.dart';
import 'package:provider1/listpage/list_provider.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController agecontroller = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(height: 70,),
                TextFormField(
                  controller: namecontroller,
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
                  controller:agecontroller,
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
                  controller: addresscontroller,
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
                      value.submitForm(
                       name: namecontroller.text, 
                       age: int.tryParse(agecontroller.text), 
                       address: addresscontroller.text);
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> Display()));
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
    );
  }
}