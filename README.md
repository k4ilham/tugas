# Tugas Liburan
Eudeka OSG4 - UI / UX Flutte Aplication

# Page Home
<img src="http://kailham.com/android/eudeka/flutter1.png">

# Page About
<img src="http://kailham.com/android/eudeka/flutter2.png">




# main.dart

  
import 'dart:io';

import 'package:flutter/material.dart';

import './hal_home.dart' as hal_home;
import './hal_about.dart' as hal_about;

void main() {
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[400],
        title: new Text("Eudeka - OSG4"),
        leading: Icon(Icons.android),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.local_bar),
            onPressed: (){

            },
          )
        ],
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new hal_home.Home(),
          new hal_about.About(),
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.red[400],
        child: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.home),
              text: "Home",
            ),
            new Tab(
              icon: new Icon(Icons.people),
              text: "About",
            ),
          ],
        ),
      ),
      floatingActionButton: Builder(builder: (context) {
        return FloatingActionButton(
          child: Icon(Icons.exit_to_app),
          onPressed: () {
            return showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Peringatan'),
                    content: Text('Apakah Yakin akan keluar?'),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('TIDAK'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      FlatButton(
                        child: Text('YA'),
                        onPressed: () {
                          exit(0);
                        },
                      )
                    ],
                  );
                });
          },
        );
      }),
    );
  }
}


