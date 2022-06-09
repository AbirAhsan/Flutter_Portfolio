import 'package:flutter/material.dart';
import 'package:portfolio/views/variables/colors.dart';
import 'package:portfolio/views/variables/icon_variables.dart';

class MainTemplate extends StatefulWidget {
  @override
  _MainTemplateState createState() => _MainTemplateState();
}

class _MainTemplateState extends State<MainTemplate> {
  // List<Widget> itemsList = [
  //   CustomHomePage(),
  //   AboutMe(),
  //   CustomResume(),
  //   CustomPortfolio(),
  //   CustomServices(),
  //   CustomContact(),
  // ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: CustomColors.offWhite,
      body: Stack(
        children: [
          Image.asset(
            CustomImages.bgImage,
            color: Colors.black.withOpacity(.5),
            colorBlendMode: BlendMode.darken,
            height: _height,
            width: _width,
            fit: BoxFit.cover,
          ),
          // Container(
          //   width: _width,
          //   height: _height,
          //   child: ListView.builder(
          //       itemCount: itemsList.length,
          //       itemBuilder: (buildContext, index) {
          //         return itemsList[index];
          //       }),
          // ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 32,
                  color: Color(0xFF469CD7),
                ),
                onPressed: () {}),
          )
        ],
      ),
    );
  }
}
