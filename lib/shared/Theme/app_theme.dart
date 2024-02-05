  import 'package:flutter/material.dart';
  class AppTheme{
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      )
    ),
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        color: Colors.black,
      )
    )
  );

  static final darkTheme =  ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Colors.white,

      )
    ),

    textTheme: const TextTheme(

      bodyText2: TextStyle(

        color: Colors.white,

      )
    )
  );
  }