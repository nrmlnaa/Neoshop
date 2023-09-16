// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:neoshop/homepage.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),  
        backgroundColor: Colors.lime,  
        foregroundColor: Colors.black,
        ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget> [
                const SizedBox(height: 30),
                  CircleAvatar(
                  radius: 102,
                  backgroundColor: Colors.black87,
                  child:
                  CircleAvatar( 
                    backgroundImage: NetworkImage('https://cdn.dribbble.com/users/7049949/screenshots/15797451/jisung_4x.png'), 
                    radius:100,
                    ),
                  ),
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
                      prefixText: 'HAHA',
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
                ]
        )
        ),
    );
  }
}