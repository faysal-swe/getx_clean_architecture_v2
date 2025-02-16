import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.blue,
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.blue,
      splashColor: Colors.transparent,
      fontFamily: 'Hind',
    );
  }

  static ThemeData get dark {
    return ThemeData(
      appBarTheme: const AppBarTheme(
        elevation: 0,
        color: Colors.blue,
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.blue,
      splashColor: Colors.transparent,
      fontFamily: 'Hind',
    );
  }
}
