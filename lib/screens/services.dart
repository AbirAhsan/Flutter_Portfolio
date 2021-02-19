import 'package:flutter/material.dart';

class CustomServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      height: _height,
      child: Text("My Services"),
    );
  }
}
