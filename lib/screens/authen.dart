import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
// Show logo
  Widget showlogo() {
    return Image.asset('images/logo.png');
  }

// App Name
  Widget showAppName() {
    return Text(
      'Pop Restaurant',
      style: TextStyle(
          fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.pink], begin: Alignment(0, 1))),
        padding: EdgeInsets.only(top: 100.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showlogo(),
            Container(margin: EdgeInsets.only(top: 30.0),
              child: showAppName(),
            )
          ],
        ),
      ),
    );
  }
}
