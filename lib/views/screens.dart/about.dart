import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/views/variables/colors.dart';

class AboutMe extends StatefulWidget {
  @override
  _AboutMeState createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      height: _height,
      color: CustomColors.offWhite,
      padding: EdgeInsets.all(40.0),
      child: Column(
        children: [
          Text(
            "About",
            style: TextStyle(
                fontSize: 32.0,
                color: CustomColors.black,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
