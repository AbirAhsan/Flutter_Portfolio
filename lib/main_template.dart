import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/homepage.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/screens/resume.dart';
import 'package:portfolio/screens/services.dart';
import 'package:portfolio/variable.dart';

class MainTemplate extends StatefulWidget {
  @override
  _MainTemplateState createState() => _MainTemplateState();
}

class _MainTemplateState extends State<MainTemplate> {
  List<Widget> itemsList = [
    CustomHomePage(),
    AboutMe(),
    CustomResume(),
    CustomPortfolio(),
    CustomServices(),
    CustomContact(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        child: Stack(
          children: [
            Container(
              width: _width,
              height: ResponsiveWidget.isLargeScreen(context)
                  ? _height
                  : ResponsiveWidget.isXMediumScreen(context)
                      ? _height / 1.3
                      : ResponsiveWidget.isMediumScreen(context)
                          ? _height / 1.6
                          : _height / 2,
              child: Image.asset(
                "assets/images/abir.jpeg",
                color: Colors.black.withOpacity(.5),
                colorBlendMode: BlendMode.darken,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: _width,
              height: _height,
              child: ListView.builder(
                  itemCount: itemsList.length,
                  itemBuilder: (buildContext, index) {
                    return itemsList[index];
                  }),
            ),
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  icon: Icon(
                    Icons.menu,
                    size: 32,
                    color: Color(0xFF469CD7),
                  ),
                  onPressed: () {}),
            )
          ],
        ),
      ),
    );
  }
}
