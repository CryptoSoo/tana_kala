
// import this Package in pubspec.yaml file
// dependencies:
// 
//   avatar_glow: 

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: AvatarGlow(
          glowColor: Colors.white,
          endRadius: 120,
          duration: Duration(milliseconds: 2000),
          repeat: true,
          showTwoGlows: true,
          curve: Curves.easeOutQuad,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(99)),
            child: Icon(
              Icons.favorite,
              color: Colors.blue,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
