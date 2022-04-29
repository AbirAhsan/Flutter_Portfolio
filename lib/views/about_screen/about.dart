import 'package:abirahsan/views/variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      height: _height,
      // color: bgColor,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            "About",
            style: TextStyle(
                fontSize: 32.0,
                color: CustomColors.blackColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
