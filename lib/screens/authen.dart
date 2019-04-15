import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
// Explicit
  String titleUser = "user";
  String hintUser = "hint";

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

// User
  Widget userTextFromField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: titleUser,
          hintText: hintUser,
          labelStyle: TextStyle(fontSize: 35.0, color: Colors.black)),
    );
  }

// Password
  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'More 6 Charactor',
          labelStyle: TextStyle(fontSize: 35.0, color: Colors.black)),
    );
  }

// SignIn
  Widget signInButton() {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(35.0)),
      color: Colors.pink[50],
      child: Text(
        'sign In',
        style: TextStyle(color: Colors.deepOrange),
      ),
      onPressed: () {},
    );
  }

// SignUp
  Widget signUpButton() {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(35.0)),
      color: Colors.pink[50],
      child: Text(
        'sign up',
        style: TextStyle(color: Colors.deepOrange),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.orange, Colors.pink], begin: Alignment(0, 1))),
        padding: EdgeInsets.only(top: 100.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showlogo(),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: showAppName(),
            ),
            Container(
              margin: EdgeInsets.only(left: 100.0, right: 100.0),
              child: userTextFromField(),
            ),
            Container(
              margin: EdgeInsets.only(left: 100.0, right: 100.0),
              child: passwordTextFormField(),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  new Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 8.0),
                      child: signInButton(),
                    ),
                  ),
                  new Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 8.0),
                      child: signUpButton(),
                    ),
                  )
                ],
              ),
              margin: EdgeInsets.only(left: 100.0, right: 100.0, top: 35.0),
            )
          ],
        ),
      ),
    );
  }
}
