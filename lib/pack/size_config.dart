import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeWidth;
  static double blockSizeHeight;

  static double _safeAreaWidth;
  static double _safeAreaHeight;
  static double safeBlockWidth;
  static double safeBlockHeight;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeWidth = screenWidth / 100;
    blockSizeHeight = screenHeight / 100;

    _safeAreaWidth =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaHeight =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockWidth = (screenWidth - _safeAreaWidth) / 100;
    safeBlockHeight = (screenHeight - _safeAreaHeight) / 100;
  }
}
