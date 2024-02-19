import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TDeviceUtils {
  static void hideKeyBoard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color,
    ));
  }

  static void setFullScreen(bool isFullScreenEnable) {
    SystemChrome.setEnabledSystemUIMode(isFullScreenEnable
        ? SystemUiMode.immersiveSticky
        : SystemUiMode.edgeToEdge);
  }
}
