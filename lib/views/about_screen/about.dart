import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../generated/locale_keys.g.dart';
import '../variables/colors.dart';
import '../variables/text_style.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;
    return Container(
      width: _width,
      height: _height,
      color: CustomColors.bgColor,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Text(
            LocaleKeys.about_title.tr(),
            style: CustomTextstyle.titleBlackBoldStyle,
          ),
        ],
      ),
    );
  }
}
