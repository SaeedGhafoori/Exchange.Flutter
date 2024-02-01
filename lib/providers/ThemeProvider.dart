import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn){
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {

  static final darkTheme = ThemeData(
    textTheme: TextTheme(
      titleLarge: GoogleFonts.ubuntu(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 20),
      titleMedium: GoogleFonts.ubuntu(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
      titleSmall: GoogleFonts.ubuntu(color: Colors.white54, fontWeight: FontWeight.w200, fontSize: 14),
      labelSmall: GoogleFonts.ubuntu(color: Colors.black, fontWeight: FontWeight.w200, fontSize: 10),
    ),
    unselectedWidgetColor: Colors.white70,
    primaryColorLight: Colors.black,
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.blueAccent[700],
    secondaryHeaderColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8)

  );

  static final lightTheme = ThemeData(
      textTheme: TextTheme(
        titleLarge: GoogleFonts.ubuntu(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
        titleMedium: GoogleFonts.ubuntu(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
        titleSmall: GoogleFonts.ubuntu(color: Colors.black38, fontWeight: FontWeight.w200, fontSize: 14),
        labelSmall: GoogleFonts.ubuntu(color: Colors.black, fontWeight: FontWeight.w200, fontSize: 10),
      ),
      unselectedWidgetColor: Colors.black,
      primaryColorLight: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.blueAccent,
      secondaryHeaderColor: Colors.black,
      iconTheme: const IconThemeData(color: Colors.white, opacity: 0.8)

  );

}