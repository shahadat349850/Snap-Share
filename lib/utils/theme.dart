import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snapshare/utils/colors.dart';

class SnapShareAppTheme {
  SnapShareAppTheme._(); // to avoid creating instance

  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,

    //...........Light Text Theme..............//
    textTheme: TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.lightTextColor),
      headlineMedium: const TextStyle().copyWith(
          fontSize: 24.0, fontWeight: FontWeight.w600, color: AppColors.lightTextColor),
      headlineSmall: const TextStyle().copyWith(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.lightTextColor),

      titleLarge: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.lightTextColor),
      titleMedium: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.lightTextColor),
      titleSmall: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.lightTextColor),

      bodyLarge: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.lightTextColor),
      bodyMedium: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.lightTextColor),
      bodySmall: const TextStyle().copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.5)),

      labelLarge: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.lightTextColor),
      labelMedium: const TextStyle().copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.lightTextColor.withOpacity(0.5)),
    ),

    //...........Light ElevatedButton Theme..............//
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size.fromHeight(50),
        foregroundColor: AppColors.buttonForegroundColor,
        backgroundColor: AppColors.buttonBackgroundColor,
        disabledBackgroundColor: AppColors.buttonDisabledBackgroundColor,
        disabledForegroundColor: AppColors.buttonDisabledForegroundColor,
      //  side: const BorderSide(color: AppColors.buttonBorderColor),
        padding: const EdgeInsets.symmetric(vertical: 12),
        textStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),

    //...........Light TextFormField Theme..............//
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: AppColors.lightIconColor,
      suffixIconColor: AppColors.lightIconColor,
      labelStyle: const TextStyle().copyWith(fontSize: 16, color: AppColors.lightTextColor),
      hintStyle: const TextStyle().copyWith(fontSize: 16, color: AppColors.lightTextColor),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: AppColors.lightTextColor.withOpacity(0.8)),

      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightBorderColor),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightBorderColor),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.disabledBorderColor),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.errorColor),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.warningColor),
      ),
    ),

    //...........Light AppBar Theme..............//
    appBarTheme: const AppBarTheme(
        elevation: 0,
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: AppColors.lightBackgroundColor,
        iconTheme: IconThemeData(color:AppColors.lightIconColor,size: 20),
        actionsIconTheme: IconThemeData(color: AppColors.lightIconColor),
        titleTextStyle: TextStyle(
            color: AppColors.lightTextColor,
            fontSize: 20,
            fontWeight: FontWeight.w600
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.lightBackgroundColor,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        )
    ),

  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    fontFamily: 'Poppins' ,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,

    //...........Dark Text Theme..............//
    textTheme: TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: AppColors.darkTextColor),
      headlineMedium: const TextStyle().copyWith(
          fontSize: 24.0, fontWeight: FontWeight.w600, color: AppColors.darkTextColor),
      headlineSmall: const TextStyle().copyWith(
          fontSize: 18.0, fontWeight: FontWeight.w600, color: AppColors.darkTextColor),

      titleLarge: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w600, color: AppColors.darkTextColor),
      titleMedium: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w500, color: AppColors.darkTextColor),
      titleSmall: const TextStyle().copyWith(
          fontSize: 16.0, fontWeight: FontWeight.w400, color: AppColors.darkTextColor),

      bodyLarge: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.darkTextColor),
      bodyMedium: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: AppColors.darkTextColor),
      bodySmall: const TextStyle().copyWith(
          fontSize: 14.0,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(0.5)),

      labelLarge: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: AppColors.darkTextColor),
      labelMedium: const TextStyle().copyWith(
          fontSize: 12.0,
          fontWeight: FontWeight.normal,
          color: AppColors.darkTextColor.withOpacity(0.5)),
    ),

    //...........Dark Elevated Button Theme..............//
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        minimumSize: const Size.fromHeight(50),
        foregroundColor: AppColors.buttonForegroundColor,
        backgroundColor: AppColors.buttonBackgroundColor,
        disabledBackgroundColor: AppColors.buttonDisabledBackgroundColor,
        disabledForegroundColor: AppColors.buttonDisabledForegroundColor,
      //  side: const BorderSide(color: AppColors.buttonBorderColor),
        padding: const EdgeInsets.symmetric(vertical: 12),
        textStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),

    //...........Dark TextFormField Theme..............//
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: AppColors.darkIconColor,
      suffixIconColor: AppColors.darkIconColor,

      labelStyle: const TextStyle().copyWith(fontSize: 16, color: AppColors.darkTextColor),
      hintStyle: const TextStyle().copyWith(fontSize: 16, color: AppColors.darkTextColor),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle: const TextStyle().copyWith(color: AppColors.darkTextColor.withOpacity(0.8)),

      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkBorderColor),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.darkBorderColor),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.disabledBorderColor),
      ),
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.errorColor),
      ),
      focusedErrorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.warningColor),
      ),
    ),

    //...........Dark AppBar Theme..............//
    appBarTheme: const AppBarTheme(
        elevation: 0,
        titleSpacing: 0,
        centerTitle: false,
        backgroundColor: AppColors.darkBackgroundColor,
        iconTheme: IconThemeData(color:AppColors.darkIconColor,size: 20),
        actionsIconTheme: IconThemeData(color: AppColors.darkIconColor),
        titleTextStyle: TextStyle(
          color: AppColors.darkTextColor,
          fontSize: 20,
          fontWeight: FontWeight.w600
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: AppColors.darkBackgroundColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
        )
    ),

  );


}
