import 'package:flutter/material.dart';
import 'register.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
// Explicit
  String titleUser = "user";
  String hintUser = "hint";
  String user, password;
  final formkey = GlobalKey<FormState>();

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
      validator: (String value) {
        if (value.length == 0) {
          return 'Have Space';
        }
      },
      onSaved: (String value) {
        user = value;
      },
    );
  }

// Password
  Widget passwordTextFormField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'More 6 Charactor',
          labelStyle: TextStyle(fontSize: 35.0, color: Colors.black)),
      validator: (String value) {
        if (value.length == 0) {
          return 'Have Space';
        }
      },
      onSaved: (String value) {
        password = value;
      },
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
      onPressed: () {
        print('You Click SignIn');
        checkAuthen();
      },
    );
  }

  void checkAuthen() async {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();

      String urlJSON =
          'http://www.androidthai.in.th/note/getUserWhereUserNote.php?isAdd=true&User=$user';
      print(urlJSON);
      
      var respones = await get(urlJSON);
      var result = json.decode(respones.body);
      print(result.toString());

      if (result.toString() == 'null') {
        print('user false');
      } else {
        print(result.toString());
      }
    } // if
  } //checkAuthen

// SignUp
  Widget signUpButton(BuildContext context) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(35.0)),
      color: Colors.pink[50],
      child: Text(
        'sign up',
        style: TextStyle(color: Colors.deepOrange),
      ),
      onPressed: () {
        print('You Click SignUp');
        goToRegister(context);
      },
    );
  }

  void goToRegister(BuildContext context) {
    var routeRegister =
        new MaterialPageRoute(builder: (BuildContext context) => Register());
    Navigator.of(context).push(routeRegister);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Form(
          key: formkey,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.orange, Colors.pink],
                    begin: Alignment(0, 1))),
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
                          child: signUpButton(context),
                        ),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(left: 100.0, right: 100.0, top: 35.0),
                )
              ],
            ),
          ),
        ));
  }
}
