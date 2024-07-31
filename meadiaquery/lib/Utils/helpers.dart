import 'dart:ui' as ui;

import 'package:flutter/material.dart';

Widget getWidget(
    BuildContext context, Widget widgetMobile, Widget widgetDesktop) {
  var width = MediaQuery.of(context).size.width;

  if (width < 600) {
    return widgetDesktop;
  } else {
    return widgetMobile;
  }
}
