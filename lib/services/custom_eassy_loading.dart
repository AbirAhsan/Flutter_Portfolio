import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../views/variables/icon_variables.dart';

class CustomEassyLoading {
  //<=============== Start Loading Function
  startLoading() async {
    await EasyLoading.show(
      dismissOnTap: false,
      status: "Please Wait ... ",
      indicator: Image.asset(
        CustomImages.loader,
        width: 100,
        height: 130,
      ),
    );
  }

  //<=============== Start Loading Function
  showSuccess() async {
    await EasyLoading.showSuccess(
      "Success",
      dismissOnTap: false,
      duration: const Duration(seconds: 2),
    );
  }

//<<================ Stop Loading Function
  stopLoading() async {
    await EasyLoading.dismiss();
  }
}
