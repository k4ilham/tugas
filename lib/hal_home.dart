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
