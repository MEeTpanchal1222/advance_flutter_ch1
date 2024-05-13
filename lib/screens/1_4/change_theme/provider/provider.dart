import 'package:flutter/foundation.dart';

class ThemeProvider extends ChangeNotifier{
  bool isDark = false;

  bool changeTheme(bool value)
  {
    isDark = value;
    notifyListeners();
    return isDark;
  }
}