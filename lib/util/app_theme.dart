import 'package:flutter/material.dart';
import 'package:peronal_routing_demo_app/util/app_color_extension.dart';
import 'package:peronal_routing_demo_app/util/color_pallette.dart';

class AppTheme {
  static final _lightMode = AppColorExtension(
      background: ColorPallette.lightBackground,
      primary: ColorPallette.darkcyan);

  static final _darkMode = AppColorExtension(
      background: ColorPallette.darkBackground,
      primary: ColorPallette.lightcyan);

  static final lightMode = ThemeData.light().copyWith(extensions: [
    _lightMode,
  ]);

  static final darkMode = ThemeData.dark().copyWith(extensions: [_darkMode]);
}
