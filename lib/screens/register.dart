import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Widget uplondIcon() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('You Click Uplond');
      },
    );
  }

// Name
  Widget nameTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Name : ', hintText: 'Name in Eng'),
    );
  }

// User
  Widget userTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'User', hintText: 'fill user here'),
    );
  }

// Password
  Widget passwordTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Password', hintText: 'More 6 Charactor'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Register'),
          actions: <Widget>[uplondIcon()],
        ),
        body: Container(
            color: Colors.pink[50],
            padding: EdgeInsets.all(50.0),
            child: Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  border: Border.all(
                      width: 5.0, color: Colors.red, style: BorderStyle.solid)),
              child: Column(children: <Widget>[
                nameTextFormField(),
                userTextFormField(),
                passwordTextFormField()
              ]),
            )));
  }
}
