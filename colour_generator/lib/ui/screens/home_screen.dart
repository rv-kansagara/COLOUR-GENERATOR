import 'dart:ui';

import 'package:flutter/material.dart';

import '../widgets/colour_slider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _red = 255;
  int _green = 255;
  int _blue = 255;
  int _alpha = 255;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(_alpha, _red, _green, _blue),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              height: 402,
              width: 350,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  ColourSlider(
                    label: 'R',
                    color: _red,
                    onChanged: (double value) {
                      setState(() => _red = value.toInt());
                      return _red.toDouble();
                    },
                  ),
                  ColourSlider(
                    label: 'G',
                    color: _green,
                    onChanged: (double value) {
                      setState(() => _green = value.toInt());
                      return _green.toDouble();
                    },
                  ),
                  ColourSlider(
                    label: 'B',
                    color: _blue,
                    onChanged: (double value) {
                      setState(() => _blue = value.toInt());
                      return _blue.toDouble();
                    },
                  ),
                  ColourSlider(
                    label: 'A',
                    color: _alpha,
                    onChanged: (double value) {
                      setState(() => _alpha = value.toInt());
                      return _alpha.toDouble();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
