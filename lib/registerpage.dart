// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:neoshop/homepage.dart';

class RegisterPage extends StatefulWidget{
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      
      home: Scaffold(
        appBar: AppBar(  
        title: const Text("NeoShop"),  
        backgroundColor: Colors.lime,  
        foregroundColor: Colors.black,
      ), 
      body: SafeArea(
        child: Column(
          children: <Widget> [
            const SizedBox(height: 15),
            const Text('Registration', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
            const SizedBox(height: 10),
            const Text('Please fill in all information correctly:', style: TextStyle(fontSize: 15,),),
            const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Name',  
                      hintText: 'Enter your name',
                    ),  
                  ),  
                ),  
                const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Username',  
                      hintText: 'Enter your username',
                    ),  
                  ),  
                ), 
                const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Email',  
                      hintText: 'Enter your email',
                    ),  
                  ),  
                ), 
                const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Phone No',  
                      hintText: 'Enter your phone number',
                    ),  
                  ),  
                ), 
                const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter your password',
                    ),  
                  ),  
                ),
                const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Confirm Password',  
                      hintText: 'Please confirm your password',
                    ),  
                  ),  
                ),
                FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.lime,
                    fixedSize: const Size(120, 50)
                    ), 
                  onPressed: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                  child: const Text('Submit', style: TextStyle(color: Colors.black, fontSize: 15),),
             ), 
          ],
        ),
      ), 
      ),
    ); 
  }
}