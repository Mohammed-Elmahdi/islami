import 'package:flutter/material.dart';

class MyProviderApp extends ChangeNotifier {
  String AppLanguage =
      'en'; //shared preference to save language which you select if you closed app
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String languageCode) {
    AppLanguage = languageCode;
    notifyListeners(); //to rebuild all app
  }

  void changeTheme(ThemeMode theme) {
    themeMode = theme;
    notifyListeners();
  }

  String getBackground() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/main_pg.png';
    } else {
      return 'assets/images/main_bg_dark.png';
    }
  }
}
