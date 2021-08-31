import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(MyApp());

var name = "Adegbiji", message = "What makes a man is what he does when the storm comes";
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messages',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.black45,
          title: Text("Messenger",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          textAlign: TextAlign.left,),
          actions: <Widget>[
            IconButton(
              icon: Icon(CupertinoIcons.plus_bubble),
              onPressed: () {
              },
            )
          ],
        ),
        body:
        ListView(
          padding: const EdgeInsets.all(2),
          children: <Widget>[
            ListTile(
                leading: CircleAvatar(
            radius: 30.0,
            backgroundImage:
            NetworkImage("https://source.unsplash.com/user/c_v_r"),
            backgroundColor: Colors.transparent,
        ),
                title:  Text('$name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),),
                subtitle: Text('$message',
                style: TextStyle(color: Colors.black),),
                onTap: () => print("ListTile")
            ),


            ],

        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          currentIndex: 0,// this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: new Icon(CupertinoIcons.ellipses_bubble,
              color: Colors.white,),
              title: new Text('Messages',
                style: TextStyle( color: Colors.white),),
            ),
            BottomNavigationBarItem(
              icon: new Icon(CupertinoIcons.phone,
              color: Colors.white,),
              title: new Text('Calls',
              style: TextStyle( color: Colors.white),),
            ),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings_solid,
                color: Colors.white,),
                title: Text('Settings',
                  style: TextStyle( color: Colors.white),),
            ),
          ],
        ),),
      );
  }
}