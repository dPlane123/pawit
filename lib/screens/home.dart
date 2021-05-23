import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[400],
        title: Image.asset(
          'assets/pawit.jpeg',
          fit: BoxFit.fill,
          height: 150,
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 150,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/request');
              },
              icon: Icon(Icons.message),
              label: Text('Request Paw-it'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  primary: Colors.deepOrangeAccent[400],
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
         
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/menu');
              },
              icon: Icon(Icons.menu),
              label: Text('Menu'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  primary: Colors.deepOrangeAccent[400],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
          ElevatedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              icon: Icon(Icons.logout),
              label: Text('Sign Out'),
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  primary: Colors.deepOrangeAccent[400],
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle:
                      TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
