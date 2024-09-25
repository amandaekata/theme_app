import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier{
   ThemeMode _appThemeMode =ThemeMode.system;
 ThemeMode  get appThemeMode => _appThemeMode;
 set setThemeMode(ThemeMode updateThemeMode){
  _appThemeMode = updateThemeMode;
  notifyListeners();
 }
}