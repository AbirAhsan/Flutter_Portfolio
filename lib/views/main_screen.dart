import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/screen_controller.dart';
import '../services/responsive.dart';
import 'variables/image_variables.dart';

class MainScreenView extends StatelessWidget {
  const MainScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    final ScreenController screenCtrl = Get.put(ScreenController());
    return Scaffold(
      //  backgroundColor: bgColor,
      body: Stack(
        children: [
          SizedBox(
            width: ResponsiveWidget.isLargeScreen(context)
                ? _width * 0.75
                : _width,
            height: ResponsiveWidget.isLargeScreen(context)
                ? _height
                : ResponsiveWidget.isXMediumScreen(context)
                    ? _height
                    : ResponsiveWidget.isMediumScreen(context)
                        ? _height
                        : _height,
            child: Image.asset(
              bgImage,
              color: Colors.black.withOpacity(.5),
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: _width,
            height: _height,
            child: ListView.builder(
                itemCount: screenCtrl.itemsOfScreen.length,
                itemBuilder: (buildContext, index) {
                  return screenCtrl.itemsOfScreen[index];
                }),
          ),
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
