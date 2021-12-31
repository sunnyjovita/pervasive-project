import 'package:flutter/material.dart';

import 'constant.dart';

ThemeData theme(){
  return ThemeData(
        scaffoldBackgroundColor: Colors.white,
        // fontFamily: "Muli",
        fontFamily: "Montserrat",
        appBarTheme: appBarTheme(),
        textTheme: textTheme(),
        inputDecorationTheme: inputDecorationTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
              borderRadius: BorderRadius.circular(28),
              borderSide: BorderSide(color: kTextColor),
              gapPadding: 10,
            );
  return InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(
              horizontal: 42,
              vertical: 20,
            ),
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder,



          );
}

TextTheme textTheme(){
  return TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.black),

  );
}