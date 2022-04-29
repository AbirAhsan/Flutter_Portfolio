import 'package:abirahsan/views/main_screen.dart';
import 'package:abirahsan/views/variables/colors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';

import 'generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: "assets/langs",
      saveLocale: true,
      supportedLocales: const [
        Locale("en", "EN"),
      ],
      fallbackLocale: const Locale('en', 'EN'),
      startLocale: const Locale('en', 'EN'),
      assetLoader: const CodegenLoader(),
      child: const MyApp()));
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = CustomColors.blackColor
    ..indicatorColor = CustomColors.whiteColor
    ..textColor = CustomColors.whiteColor
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Abir Ahsan",
      theme: ThemeData(
        fontFamily: "Montserrat",
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: CustomColors.primaryColorCustom,
      ),
      home: const MainScreenView(),
    );
  }
}



// flutter pub run easy_localization:generate --source-dir ./assets/langs
// flutter pub run easy_localization:generate --source-dir ./assets/langs -f keys -o locale_keys.g.dart