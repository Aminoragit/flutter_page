import 'package:flutter/material.dart';
import 'package:startpage/routs.dart';
import 'package:startpage/screens/splash/splash_screen.dart';
import 'package:startpage/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'C·S·W Portfolio',
        theme: theme(),

        //어플 시작시 homepage는 SplashScreen()으로 실행 클래스 위치는 splash_screen.dart이다.
        // home: SplashScreen(),
        initialRoute: SplashScreen.routeName,
        routes: routes);
  }
}
