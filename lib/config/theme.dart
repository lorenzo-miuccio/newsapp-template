import 'package:flutter/material.dart';

const _appDarkBarTheme = AppBarTheme(
    centerTitle: true,
    elevation: 0,
    color: Colors.black,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 22));

const _appLightBarTheme = AppBarTheme(
  centerTitle: true,
  elevation: 0,
  color: Colors.white,
  iconTheme: IconThemeData(color: Colors.black),
  titleTextStyle: TextStyle(color: Colors.black, fontSize: 22),
);

const _appTextTheme = TextTheme(
  subtitle1: TextStyle(fontSize: 12),
  bodyText1: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
  bodyText2: TextStyle(fontSize: 22),
  headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  headline1: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
);

ThemeData getThemeDataByMode({required bool darkMode}) => darkMode
    ? ThemeData.dark().copyWith(primaryColor: Colors.white, backgroundColor: Colors.black, appBarTheme: _appDarkBarTheme, textTheme: _appTextTheme)
    : ThemeData(primaryColor: Colors.black, backgroundColor: Colors.white, appBarTheme: _appLightBarTheme, textTheme: _appTextTheme);
