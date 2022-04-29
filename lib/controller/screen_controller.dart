import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/about_screen/about.dart';
import '../views/contact_screen/contact_screen.dart';
import '../views/home_screen/homepage.dart';
import '../views/porfolio_screen/portfolio.dart';
import '../views/resume_screen/resume.dart';
import '../views/service_screen.dart/services.dart';

class ScreenController extends GetxController {
  //<<============================================ All Screens List
  RxList<Widget> itemsOfScreen = const <Widget>[
    HomeScreen(),
    AboutMeScreen(),
    ResumeScreen(),
    PortfolioScreen(),
    ServicesScreen(),
    ContactScreen(),
  ].obs;
}
