import 'package:flutter/material.dart';

import '../../services/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      height: _height,
      color: Colors.transparent,
      child: Align(
          alignment: ResponsiveWidget.isLargeScreen(context)
              ? Alignment.center
              : ResponsiveWidget.isXMediumScreen(context)
                  ? Alignment.topCenter
                  : ResponsiveWidget.isMediumScreen(context)
                      ? Alignment.topCenter
                      : Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(
              top: ResponsiveWidget.isLargeScreen(context)
                  ? 0.0
                  : ResponsiveWidget.isXMediumScreen(context)
                      ? _height / 2.5
                      : ResponsiveWidget.isMediumScreen(context)
                          ? _height / 3
                          : _height / 4,
            ),
            child: const Text(
              "This website is Under Construction",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
          )),
    );
  }
}
