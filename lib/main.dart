import 'package:flutter/material.dart';
import 'screens/authen.dart';
import 'screens/register.dart';

// main Method
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Authen()
    );
  }
}
