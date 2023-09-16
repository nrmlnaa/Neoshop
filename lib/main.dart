import 'package:flutter/material.dart';
import 'package:neoshop/homepage.dart';
import 'package:neoshop/registerpage.dart';
import 'package:neoshop/fetch/fetch_user.dart';
import 'package:neoshop/models/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeoShop',
      theme: ThemeData(
        primarySwatch: Colors.lime, 
      ),
      home: const MyHomePage(title: 'NeoShop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {

   @override  
  Widget build(BuildContext context) {  
    return MaterialApp(
      home: Scaffold(  
      appBar: AppBar(  
        title: const Text("NeoShop"),  
        backgroundColor: Colors.lime,  
        foregroundColor: Colors.black,
      ),  
      body: Center(   
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            const Icon(Icons.shopping_cart_sharp, color:Colors.orange, size: 200),
            const SizedBox(height: 5),
            const Text('Welcome to Neoshop!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
            const SizedBox(height: 5),
            const Padding(  
                  padding: EdgeInsets.all(15),  
                  child: TextField(  
                    controller: null,
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
                    obscureText: true,
                    controller: null,  
                    decoration: InputDecoration(  
                      border: OutlineInputBorder(),  
                      labelText: 'Password',  
                      hintText: 'Enter password',  
                    ),  
                  ),  
                ),
             FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.lime,
                    fixedSize: const Size(100, 30)
                    ),
                  onPressed: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage()));
                    },
                  child: const Text('Login', style: TextStyle(color: Colors.black, fontSize: 15),),
             ),
            const Text("Register now:"),
            FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.lime,
                    fixedSize: const Size(100, 30)
                    ),
                  onPressed: () { 
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RegisterPage()));
                    },
                  child: const Text('Register', style: TextStyle(color: Colors.black, fontSize: 15),),
                  )
                
          ]

        )
      ),  
    ),  
    );  
  }

  
}
