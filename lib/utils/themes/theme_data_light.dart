// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/utils/themes/app_colors_light.dart';

ThemeData getThemeDataLight() => ThemeData(
      primaryColor: AppColorsLight.kPrimaryColor,
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: AppColorsLight.kTextyellowColor,
              height: 0),
          color: AppColorsLight.kPrimaryColor,
          centerTitle: true,
          toolbarHeight: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                // bottom: Radius.circular(30), // تعيين نصف قطر الزوايا السفلية للشريط
                ),
          ),
          iconTheme: IconThemeData(color: AppColorsLight.kTextWhiteColor)),
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: AppColorsLight.kTextWhiteColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        headline2: TextStyle(
          color: AppColorsLight.kTextBlackColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
          color: AppColorsLight.kTextBlackColor,
          fontSize: 15,
        ),
        bodyText2: TextStyle(
          color: AppColorsLight.kTextBlackColor,
          fontSize: 15,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: AppColorsLight.kTextBlackColor),
        suffixStyle: TextStyle(color: AppColorsLight.kTextBlackColor),
        contentPadding: EdgeInsets.all(16),
        isDense: true,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        constraints: BoxConstraints(maxWidth: 270),
        filled: true,
        fillColor: AppColorsLight.kOtherColor,
        labelStyle: TextStyle(
            fontSize: 15.0, color: AppColorsLight.kTextBlackColor, height: 0.6),
        hintStyle: TextStyle(
            fontSize: 16.0, color: AppColorsLight.kTextBlackColor, height: 0.5),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColorsLight.kTextBlackColor,
            width: 0.3,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColorsLight.kTextBlackColor, width: 0.7),
          borderRadius: BorderRadius.circular(15),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: AppColorsLight.kTextBlackColor, width: 0.3),
          borderRadius: BorderRadius.circular(15),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColorsLight.kErrorColor),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue),
          borderRadius: BorderRadius.circular(15),
        ),
        counterStyle: TextStyle(color: AppColorsLight.kTextBlackColor),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColorsLight.kSecondaryColor,
        textTheme: ButtonTextTheme.primary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(AppColorsLight.kSecondaryColor),
          fixedSize: MaterialStateProperty.all(Size(180, 45)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
          foregroundColor:
              MaterialStateProperty.all(Colors.white), // تحديد لون النص هنا
        ),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        primary: AppColorsLight.kPrimaryColor, // Change text color
        textStyle: TextStyle(
          fontSize: 15, // Change font size
          fontWeight: FontWeight.bold, // Change font weight
        ),
      )),
      filledButtonTheme: FilledButtonThemeData(
        style: TextButton.styleFrom(
          backgroundColor: AppColorsLight.kTextWhiteColor,
          elevation: 5,
          fixedSize: Size(175, 150),
          foregroundColor: AppColorsLight.kTextBlackColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            // side: BorderSide(

            //             color: AppColorsLight.kPrimaryColor, // لون الإطار
            //             width: 7.0,
            //             strokeAlign:0,
            //             style: BorderStyle.solid,
            //           ),
          ),
        ),
      ),
      cupertinoOverrideTheme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: AppColorsLight.kSecondaryColor,
      ),
      iconTheme: IconThemeData(
        size: 30,
        color: AppColorsLight.kTextWhiteColor,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColorsLight.kSecondaryColor),
    );
