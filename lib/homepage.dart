import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:neoshop/main.dart';
import 'package:neoshop/profilepage.dart';


class HomePage extends StatefulWidget {
HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),  
        backgroundColor: Colors.lime,  
        foregroundColor: Colors.black,
        ),

      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(5),
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          Container(
            height: 50,
            child: Card(
              elevation: 15,
              child: Column(
                children: <Widget>[
                  Image.network('https://images-ext-2.discordapp.net/external/bnAKiQJfXILy00FkgzVNHad7YLuSZ7mnr1z3JG7qhKA/https/i.imgur.com/tlmv0ub.png?width=1046&height=1046', height: 150, width: 200, fit: BoxFit.fitHeight ),
                  SizedBox(height: 5,),
                  Text('NCT #127 Regulate', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('NCT 127'), 
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            child: Card(
              elevation: 15,
              child: Column(
                children: <Widget>[
                  Image.network('https://images-ext-2.discordapp.net/external/YtvOkt8AHrkKiYWZg-hgN8EOXbeT2Oi9K-a81Ow0ITw/https/imgur.com/JOTMeXM.jpg?width=1046&height=1046', height: 150, width: 200, fit: BoxFit.fitHeight ),
                  SizedBox(height: 5,),
                  Text('WE BOOM', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('NCT DREAM')
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 15,
              child: Column(
                children: <Widget>[
                  Image.network('https://images-ext-1.discordapp.net/external/J2oA8HRc0wfSMJpdstgP57xA23QA22kT5J3QgvYvY7M/https/upload.wikimedia.org/wikipedia/en/thumb/0/04/NCT_127_Neo_Zone.jpg/220px-NCT_127_Neo_Zone.jpg?width=440&height=440', height: 150, width: 200, fit: BoxFit.fitHeight ),
                  SizedBox(height: 5,),
                  Text('NEO ZONE', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('NCT 127')
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 15,
              child: Column(
                children: <Widget>[
                  Image.network('https://images-ext-1.discordapp.net/external/boLmgU53CM_joUnDYDglMRtLRxFg4z9Gjw_dC60J76o/https/imgur.com/qwYRYOd.jpg?width=1046&height=1046', height: 150, width: 200, fit: BoxFit.fitHeight ),
                  SizedBox(height: 5,),
                  Text('RESONANCE Pt.1', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('NCT 2020')
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 15,
              child: Column(
                children: <Widget>[
                  Image.network('https://images-ext-2.discordapp.net/external/7eNDp1zRszhjR7oChsp81xhrXBJ-g6DJ-PWWBxgNpqQ/https/imgur.com/YrseTno.jpg?width=1046&height=1046', height: 150, width: 200, fit: BoxFit.fitHeight ),
                  SizedBox(height: 5,),
                  Text('RESONANCE Pt. 2', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('NCT 2020')
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 15,
              child: Column(
                children: <Widget>[
                  Image.network('https://images-ext-2.discordapp.net/external/bsqAV6UdzctvH_6QyGVap6C2hSiV5Hxgksr5Jo9Nvyk/https/i.imgur.com/E3D9ZiN.png?width=1046&height=1046', height: 150, width: 200, fit: BoxFit.fitHeight ),
                  SizedBox(height: 5,),
                  Text('Kick Back', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('WAYV')
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 15,
              child: Column(
                children: <Widget>[
                  Image.network('https://images-ext-2.discordapp.net/external/jwk2lH5ALdEIskzo-om-n50B_qtdWptFNJg5ieF09c8/https/i.imgur.com/FT0cX4z.png?width=994&height=994', height: 150, width: 200, fit: BoxFit.fitHeight ),
                  SizedBox(height: 5,),
                  Text('Hot Sauce', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('NCT DREAM')
                ],
              ),
            ),
          ),
          Container(
            child: Card(
              elevation: 15,
              child: Column(
                children: <Widget>[
                  Image.network('https://images-ext-2.discordapp.net/external/Vp5qzO8nHltLxKCWuaFR1JbTY7qjyQjPkQysStGDm2I/https/upload.wikimedia.org/wikipedia/en/1/12/NCT_127_-_Sticker.png?width=600&height=600', height: 150, width: 200, fit: BoxFit.fitHeight ),
                  SizedBox(height: 5,),
                  Text('STICKER', style: TextStyle(fontWeight: FontWeight.bold),),
                  Text('NCT 127')
                ],
              ),
            ),
          ),

        ] 
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.lime,
              ),
              child: Column(
                children: const [
                  CircleAvatar(
                  radius: 52,
                  backgroundImage: NetworkImage('https://cdn.dribbble.com/users/7049949/screenshots/15797451/jisung_4x.png'),
                  ),
                  SizedBox(height: 10),
                  Text('Hello, Jisungiee!'),

                ]
                ),
              
            ),
            ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfilePage()));
              },
            ),
            ListTile(
              title: const Text('Logout'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
              },
            ),
          ],
        ),
      ),
    ); 
  }
}


