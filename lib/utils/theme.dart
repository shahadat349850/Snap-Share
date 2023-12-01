import 'package:flutter/material.dart';

class SnapShareAppTheme {
  SnapShareAppTheme._(); // to avoid creating instance

  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    // fontFamily: ,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,

    //...........Text Theme..............//
    textTheme: TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.black),
      headlineMedium: const TextStyle().copyWith(
          fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.black),
      headlineSmall: const TextStyle().copyWith(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.black),

      titleLarge: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.black),
      titleMedium: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
      titleSmall: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.black),

      bodyLarge: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.black),
      bodyMedium: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
      bodySmall: const TextStyle().copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.5)),

      labelLarge: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
      labelMedium: const TextStyle().copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: Colors.black.withOpacity(0.5)),
    ),

    //...........ElevatedButton Theme..............//

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        disabledBackgroundColor: const Color(0xFFDAE4FF),
        disabledForegroundColor: Colors.white,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 12),
        textStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),

    //...........TextFormField Theme..............//

    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.black,
      suffixIconColor: Colors.black,
      labelStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.black),
      hintStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.black),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),

      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange),
      ),
    ),

  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    // fontFamily: ,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,

    //...........Text Theme..............//
    textTheme: TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white),
      headlineMedium: const TextStyle().copyWith(
          fontSize: 24.0, fontWeight: FontWeight.w600, color: Colors.white),
      headlineSmall: const TextStyle().copyWith(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: Colors.white),

      titleLarge: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
      titleMedium: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
      titleSmall: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.white),

      bodyLarge: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white),
      bodyMedium: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
      bodySmall: const TextStyle().copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(0.5)),

      labelLarge: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white),
      labelMedium: const TextStyle().copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: Colors.white.withOpacity(0.5)),
    ),

    //...........Elevated Button Theme..............//

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        disabledBackgroundColor: const Color(0xFFDAE4FF) ,
        disabledForegroundColor: Colors.white,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 12),
        textStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),

    //...........TextFormField Theme..............//

    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.white,
      suffixIconColor: Colors.white,

      labelStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.white),
      hintStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.white),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: Colors.white.withOpacity(0.8)),

      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange),
      ),
    ),

  );


}
