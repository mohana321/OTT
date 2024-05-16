
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Uiprovider extends ChangeNotifier{

  bool _isDark =false;
  bool get isDark => _isDark;

  late SharedPreferences storage;

  final darkTheme = ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
    primaryColorDark:  Colors.black12,
  );

  final lightTheme = ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
    primaryColorDark:  Colors.white,
  );


  changeTheme()
  {
    _isDark = !isDark;
    storage.setBool("isdark", _isDark);
    notifyListeners();

  }
  init() async {
    storage= await SharedPreferences.getInstance();
    _isDark= storage.getBool("isdark")??false;
    notifyListeners();

  }
}

