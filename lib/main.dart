import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio/views/main_template.dart';
import 'package:portfolio/views/variables/colors.dart';

import 'generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await GetStorage.init();

  runApp(
    EasyLocalization(
      path: "assets/langs",
      saveLocale: true,
      supportedLocales: const [
        Locale("en", "EN"),
        Locale("bn", "BD"),
      ],
      fallbackLocale: const Locale('en', 'EN'),
      startLocale: const Locale('en', 'EN'),
      assetLoader: const CodegenLoader(),
      child: const MyApp(),
    ),
  );
  configLoading();
//  connectionStatus.dispose(););
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.black
    ..indicatorColor = CustomColors.white
    ..progressColor = CustomColors.white
    ..textColor = CustomColors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = false
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
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
      home: MainTemplate(),
      builder: EasyLoading.init(),
    );
  }
}


// flutter pub run easy_localization:generate --source-dir ./assets/langs
// flutter pub run easy_localization:generate --source-dir ./assets/langs -f keys -o locale_keys.g.dart