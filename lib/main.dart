import 'package:flutter/material.dart';
import 'screens/authen.dart';
// main Method
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Authen()
    );
  }
}
