import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/contact.dart';
import 'package:portfolio/screens/homepage.dart';
import 'package:portfolio/screens/portfolio.dart';
import 'package:portfolio/screens/resume.dart';
import 'package:portfolio/screens/services.dart';

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
      body: Container(
        child: Stack(
          children: [
            Container(
              width: _width,
              height: _height,
            ),
            Container(
              width: _width,
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
