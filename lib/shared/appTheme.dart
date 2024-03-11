 import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:provider/provider.dart';

class ThemeProvider with ChangeNotifier {
  // We nee a selected theme
  ThemeData _selectedTheme = ThemeData.dark();
  ThemeData ligth = ThemeData.light().copyWith(
    primaryColor: Colors.white,
  );
  ThemeData dark = ThemeData().copyWith(
    primaryColor: Colors.black,
  );
  ThemeProvider(bool isDarkMode,){
    _selectedTheme = isDarkMode ? dark : ligth;
  }
  ThemeData get getTheme => _selectedTheme;

  void toggleTheme() {
    _selectedTheme = _selectedTheme == dark ? ligth : dark;
    notifyListeners();
  }
 }
