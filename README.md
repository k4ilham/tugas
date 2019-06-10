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


# hal_home.dart

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final List<String> titles = [
    'Flutter',
    'react native',
    'java',
    'kotlin',
    'swift'
  ];

  final List<String> subtitles = [
    'flutter adalah SDK untuk pengembangan aplikasi mobile yang dikembangkan oleh Google',
    'React Native adalah sebuah framework javascript yang di kembang kan oleh facebook dan memungkin kan kita membuat aplikasi mobile android atau ios menggunakan teknologi web',
    'Java adalah bahasa pemrograman yang dapat dijalankan di berbagai komputer termasuk telepon genggam',
    'Google kini telah memberikan dukungan penuh untuk bahasa pemrograman Kotlin. Android Studio 3.0 yang akan segera diluncurkan dalam waktu dekat nantinya akan langsung mendukung bahasa pemrograman Kotlin.',
    'Swift adalah bahasa pemrograman objek fungsional untuk pengembangan iOS dan OS X yang dibuat oleh Apple.'
  ];


  final List<String> images = [
    'https://cdn-images-1.medium.com/max/2400/1*73IgUxPfyXUKZAaIXgutrw.png',
    'https://ds1hty5qgiz73.cloudfront.net/wp-content/uploads/2018/12/2018-12-06.jpg',
    'https://cdn-images-1.medium.com/max/1200/1*E4CO83SmCCrvRrge7U3Ahw.jpeg',
    'https://i.udemycdn.com/course/750x422/2099848_c9db.jpg',
    'http://www.developersacademy.org/blog/wp-content/uploads/2018/05/wc-swift.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, index) {
            return Card(
                child: ListTile(
                  title: Text(titles[index],style: new TextStyle(fontSize: 20.0)),
                  subtitle: Text(subtitles[index],style: new TextStyle(fontSize: 15.0)),
                  leading: Image.network(images[index])
                ),
            );
          },
        )
    );
  }


}


# hal_about.dart

import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[
          new Container(
             child: Card(
              margin: EdgeInsets.all(10),
               child: Image(image : new NetworkImage("https://pbs.twimg.com/profile_images/2250340911/577168_3422605636996_1025859888_32529160_1367636733_n_400x400.jpg")),
             ),
          ),

          new Container(
            margin: EdgeInsets.all(5),
            child: new Column(
              children: <Widget>[
                Text("Kode : OSG04010", style: new TextStyle(fontSize: 20.0),),
                Text("Nama : Ilham Maulana", style: new TextStyle(fontSize: 20.0),),
                Text("Email : k4ilham@gmail.com", style: new TextStyle(fontSize: 20.0),),
              ],
            ),
          ),

        ],
      ),
    );
  }
}


