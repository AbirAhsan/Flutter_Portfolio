import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/screens.dart/about.dart';
import '../views/screens.dart/contact.dart';
import '../views/screens.dart/homepage.dart';
import '../views/screens.dart/portfolio.dart';
import '../views/screens.dart/resume.dart';
import '../views/screens.dart/services.dart';

class ScreenController extends GetxController {
  //<<============================  Widget List

  RxList<Widget> screenList = <Widget>[
    CustomHomePage(),
    AboutMe(),
    CustomResume(),
    CustomPortfolio(),
    CustomServices(),
    CustomContact(),
  ].obs;
}
