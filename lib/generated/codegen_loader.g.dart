// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_EN = {
  "app_details": {
    "name": "24/7 Virtual Assistants",
    "developedBy": "Developed by : ",
    "developer": "Xubisoft Limited"
  },
  "about": {
    "title": "About",
    "desciption": "Here is my about description"
  },
  "contact": {
    "title": "My Contact"
  },
  "homePage": {
    "title": "Homepage"
  },
  "portfolio": {
    "title": "My Portfolio"
  },
  "resume": {
    "title": "My Resume"
  },
  "service": {
    "title": "My Service"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_EN": en_EN};
}
