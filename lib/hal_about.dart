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

