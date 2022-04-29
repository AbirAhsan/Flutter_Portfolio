import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../views/variables/image_variables.dart';

class CustomEassyLoading {
  //<=============== Start Loading Function
  startLoading() async {
    await EasyLoading.show(
      dismissOnTap: false,
      status: "Please Wait ... ",
      indicator: Image.asset(
        ImageVariables.loader,
        width: 100,
        height: 130,
      ),
    );
  }

//<<================ Stop Loading Function
  stopLoading() async {
    await EasyLoading.dismiss();
  }
}
