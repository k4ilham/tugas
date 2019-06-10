import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {

  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Column(
        children: <Widget>[

          new Container(
            padding: new EdgeInsets.all(10.0),
            child: Text("Belajar Flutter", style: new TextStyle(fontSize: 30.0,),),
          ),
          
          new Container(
            child: Card(
              margin: EdgeInsets.all(10),
                child: Image(image : new NetworkImage("https://www.rawshorts.com/freeicons/wp-content/uploads/2017/01/red_repicthousebase_1484336386-1.png")),
            ),
          ),

          new Container(
            padding: new EdgeInsets.all(5.0),
            child: TextField(
              keyboardType: TextInputType.number,
              maxLines: 1,
              decoration: InputDecoration(
                  hintText: 'Nama'
              ),
              controller: myController,
            ),
          ),

          new Container(
            child: RaisedButton(
              onPressed: (){},
              child: Text(
                'Button',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
            ),
          ),

          new Container(
            child: FloatingActionButton(
                onPressed: (){
                  print(myController.text);
                }
            ),
          ),

        ],
      ),
    );
  }
}

