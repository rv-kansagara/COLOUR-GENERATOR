import 'package:flutter/material.dart';

import 'ui/screens/home_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colour Generator',
      home: HomeScreen(),
    );
  }
}
