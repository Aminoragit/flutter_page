import 'package:flutter/widgets.dart';
import 'package:startpage/screens/sign_in/sign_in_screen.dart';
import 'package:startpage/screens/splash/splash_screen.dart';

//버튼을 누르면 어떻게 할건지
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
