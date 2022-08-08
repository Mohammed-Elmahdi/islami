import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xFFB7935F);
  static Color primaryColorDark = Color(0xFF19213B);
  static Color blackColor = Color(0xFF242424);
  static Color whiteColor = Color(0xFFEAEBED);
  static Color yellowColor = Color(0xFFFACC1D);

  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    // canvasColor: primaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: blackColor,
      ), //back icon
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: blackColor,
        fontWeight: FontWeight.w700,
      ),
      //black w700
      headline2: TextStyle(
        fontSize: 25,
        color: blackColor,
        fontWeight: FontWeight.w400,
      ),
      //black w400
      subtitle1: TextStyle(
        fontSize: 22,
        color: blackColor,
        fontWeight: FontWeight.w400,
      ),
      subtitle2: TextStyle(
        fontSize: 25,
        color: whiteColor,
        fontWeight: FontWeight.w500,
      ),
      headline3: TextStyle(
        fontSize: 25,
        color: blackColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: primaryColorDark,
    // canvasColor: primaryColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(
        color: whiteColor,
      ), //back icon
    ),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: whiteColor,
        fontWeight: FontWeight.w700,
      ),
      //black w700
      headline2: TextStyle(
        fontSize: 25,
        color: yellowColor,
        fontWeight: FontWeight.w400,
      ),
      //black w400
      subtitle1: TextStyle(
        fontSize: 22,
        color: yellowColor,
        fontWeight: FontWeight.w400,
      ),
      //black w400
      subtitle2: TextStyle(
        fontSize: 25,
        color: whiteColor,
        fontWeight: FontWeight.w500,
      ),
      headline3: TextStyle(
        fontSize: 25,
        color: whiteColor,
        fontWeight: FontWeight.w400,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
      unselectedItemColor: Colors.white,
    ),
  );
}
