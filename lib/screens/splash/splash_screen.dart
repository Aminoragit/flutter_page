import 'package:flutter/material.dart';
import 'package:startpage/screens/splash/components/body.dart';
import 'package:startpage/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";

  @override
  Widget build(BuildContext context) {
    //size_config.dart에서 SizeConfig가져오기
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
