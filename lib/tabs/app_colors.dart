import 'package:flutter/material.dart';
class AppColors {
  static Color primary = Color(0xFF5D9CEC);
  static Color secondary = Color(0xFFDFECDB);
  static Color grey = Color(0xFFC8C9CB);
  static const Color blackColor = Color(0xff242424);
  static const Color primaryDarkColor = Color(0xff141A2E);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primary,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall: TextStyle(
            fontWeight: FontWeight.w300, fontSize: 20, color: blackColor),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 25, color: primary),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: blackColor),
      ),
      appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black, size: 30),
          color: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: blackColor)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primary,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: blackColor,
      ));
  static ThemeData darkTheme = ThemeData(
      primaryColor: primaryDarkColor,
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        bodySmall:TextStyle(
            fontWeight: FontWeight.w300, fontSize: 20, color: Colors.white),
        bodyMedium: TextStyle(
            fontWeight: FontWeight.w500, fontSize: 25, color: Colors.white ),
        bodyLarge: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
      ),
      appBarTheme: AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white, size: 30),
          color: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryDarkColor,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
      ));
}
