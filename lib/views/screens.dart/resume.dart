import 'package:flutter/material.dart';

import '../variables/colors.dart';

class CustomResume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      height: _height,
      color: CustomColors.offWhite,
      padding: EdgeInsets.all(40.0),
      child: Text("My Resume"),
    );
  }
}
