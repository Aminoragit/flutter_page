import 'package:flutter/material.dart';
import 'package:startpage/constants.dart';
import 'package:startpage/size_config.dart';

//list를 나누기위한 클래스 모두 소모할때까지 반복한다(for)
class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            "지원자: 최석원?",
            style: TextStyle(
              fontSize: 36,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 26,
              color: Colors.black54,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          Image.asset(
            image,
            height: getProportionateScreenHeight(280),
            width: getProportionateScreenWidth(235),
          ),
        ],
      ),
    );
  }
}
