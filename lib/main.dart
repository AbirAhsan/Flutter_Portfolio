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
      path: "assets/langs/",
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
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      //     localizationsDelegates: [
      //       AppLocalizations.delegate,
      //       GlobalMaterialLocalizations.delegate,
      //  GlobalWidgetsLocalizations.delegate,
      //  GlobalCupertinoLocalizations.delegate,],
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primarySwatch: CustomColors.primaryColorCustom,
        fontFamily: 'Montserrat',
        // appBarTheme: AppBarTheme(
        //   titleTextStyle: const TextStyle(
        //       color: Colors.white,
        //       fontFamily: "Arcon",
        //       fontSize: 22,
        //       fontWeight: FontWeight.bold),
        //   iconTheme: IconThemeData(
        //     color: CustomColors.whiteColor,
        //   ),
        // ),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        //   style: ButtonStyle(
        //     textStyle: MaterialStateProperty.all<TextStyle>(
        //       const TextStyle(color: white, fontSize: 20, fontFamily: 'Arcon'),
        //     ),
        //   ),
        // ),
      ),

      home: const MainScreenView(),
      builder: EasyLoading.init(),
    );
  }
}



// flutter pub run easy_localization:generate --source-dir ./assets/langs
// flutter pub run easy_localization:generate --source-dir ./assets/langs -f keys -o locale_keys.g.dart