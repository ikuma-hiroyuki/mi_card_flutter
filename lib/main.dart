import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final imageUrl =
      'https://livedoor.blogimg.jp/girokerogirokero/imgs/d/a/dadb4df6.png';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(imageUrl),
              radius: 50.0,
            ),
            Text(
              "Ikuma Hiroyuki",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            Text(
              "FULUTTER DEVELOPER",
              style: TextStyle(
                color: Colors.teal[100],
                fontSize: 20.0,
                fontFamily: 'SansitaSwashed',
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              child: Divider(
                color: Colors.white,
                thickness: 2.0,
              ),
              padding: EdgeInsets.symmetric(horizontal: 30.0),
            ),
            MyBox(
              text: '0120-123-123',
              icon: Icons.phone,
            ),
            MyBox(
              text: 'exsample@gmail.com',
              icon: Icons.email,
            ),
          ],
        ),
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final text;
  final icon;
  MyBox({@required this.text, @required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.teal[900],
      elevation: 20.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
          size: 30.0,
        ),
        title: Text(
          text,
          style: TextStyle(fontSize: 20.0, color: Colors.teal[900]),
        ),
      ),
    );
  }
}
