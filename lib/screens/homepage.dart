import 'package:flutter/material.dart';

class CustomHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      height: _height,
      color: Colors.transparent,
      child: Text("My Home Page"),
    );
  }
}
