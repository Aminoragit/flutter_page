import 'package:flutter/material.dart';
import 'package:startpage/components/default_button.dart';
import 'package:startpage/constants.dart';
import 'package:startpage/screens/sign_in/sign_in_screen.dart';

import 'package:startpage/screens/splash/components/splash_content.dart';
import 'package:startpage/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  //리스트<맵<값,값>>으로 tetx와 image 설정해주기
  List<Map<String, String>> splashData = [
    {
      "text": "실무투입을 원한다!\n도전적,진취적 성격",
      "image": "assets/images/goal.png",
    },
    {
      "text": "DBMS/PHP/Oracle\n/데이터 관리능력",
      "image": "assets/images/dbms.png",
    },
    {
      "text": "장교출신\n300명 관리업무 수행",
      "image": "assets/images/officer.png",
    },
    {
      "text": "FrontEnd/BackEnd FrameWork\n개발경험 다수!",
      "image": "assets/images/frameworks.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            //sizebox내부의 column내부의 widget을 Expanded로 위아래 나눈것이다.
            Expanded(
              flex: 3,
              //좌우로 드래그로 움직이는 뷰
              child: PageView.builder(
                //페이지가 변경되면해당 되는 페이지의 값을 반환
                //페이지는 총 3개라서 vaule는 1,2,3이다
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                //SplashContent()는 components의 splash_content.dart로 옮겼다
                //body.dart아래쪽에 class를 그대로 둬도 상관은 없지만 코드를 깔끔하게
                //보기위해 분리한것이다.
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]["text"],
                ),
              ),
            ),

            //상부랑 하부를 나누기 위한 Expanded() 여긴 하부이다.
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20.0)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    //dot을 splashData길이만큼 늘려준다.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 2),
                    DefaultButton(
                      text: "좀 더 알아보기",
                      //버튼을 누르면 뭘할지
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

//기존 Container에 애니메이션 효과주기
  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}



//로딩 메시지