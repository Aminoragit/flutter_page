//Appbar에 표시될 테마설정을 함수화
import 'package:flutter/material.dart';

import 'package:startpage/constants.dart';

//textTheme와 appBarTheme를 메서드로 쪼개서 관리함(이러면 하나의 부품을 여러개로 쪼개서 관리가능함)
ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextcolor),
    bodyText2: TextStyle(color: kTextcolor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.white,
    elevation: 0,
    centerTitle: true,
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Color(0xFF8B8B8B),
        fontSize: 18,
      ),
    ),
  );
}
