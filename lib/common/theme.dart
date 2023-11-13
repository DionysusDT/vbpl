import 'package:flutter/material.dart';

class Themes {

  static double height = WidgetsBinding.instance.platformDispatcher.views.first.physicalSize.height / WidgetsBinding.instance.platformDispatcher.views.first.devicePixelRatio;

  static final ThemeData light = ThemeData.light().copyWith(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 10,
        backgroundColor: Colors.white,
        landscapeLayout: BottomNavigationBarLandscapeLayout.spread,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        selectedIconTheme: IconThemeData(size: height * 0.024),
        unselectedIconTheme: IconThemeData(size: height * 0.024),
        selectedLabelStyle: TextStyle(fontSize: height * 0.012),
        unselectedLabelStyle: TextStyle(fontSize: height * 0.012),
        enableFeedback: false),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light, 
      // primary: primary,
      seedColor: Colors.white, 
      // primary: Colors.white,
  //     onPrimary: onPrimary, 
  //     secondary: secondary,
  //     onSecondary: onSecondary, 
  //     error: error, onError: onError, 
  //     background: background,
  //     onBackground: onBackground,
  //    surface: surface, 
  //     onSurface: onSurface)
  // );   
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Colors.blue,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(
      buttonColor: Color.fromRGBO(105, 108, 255, 1),
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Color.fromRGBO(105, 108, 255, 1)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    )
  );
}
