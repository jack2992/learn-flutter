import 'dart:async';

import 'package:flutter/material.dart';
import 'package:practice/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback(_afterLayout);
    super.initState();
  }
  _afterLayout(_) {
    Timer(Duration(seconds: 3), () {
      isFirstTime().then((isFirstTime) {
        goToNextScreen(isFirstTime);
      });
    });
    super.setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(fit: StackFit.expand, children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage(Constants.BG1),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                height: 80,
                image: const AssetImage(Constants.LOGO),
                fit: BoxFit.fitHeight,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This is Logo ",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  Future<bool> isFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var isFirstTime = prefs.getBool('first_time');
    print(isFirstTime);
    if (isFirstTime != null && !isFirstTime) {
      prefs.setBool('first_time', false);
      return false;
    } else {
      prefs.setBool('first_time', false);
      return true;
    }
  }

  void goToNextScreen(bool isFirstTime) {
    print('goto: $isFirstTime');
    isFirstTime
        ? Navigator.push(
        context, MaterialPageRoute(builder: (context) => SplashPage()))
        : Navigator.push(
        context, MaterialPageRoute(builder: (context) => BuildScreen3()));
  }
}

class BuildScreen3 extends StatelessWidget {
  const BuildScreen3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
              child: Image.asset(
            'assets/images/b.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          )),
          Positioned(
              child: Image.asset(Constants.LOGO),
              top: size.height / 6,
              left: size.width / 6,
              right: size.width / 6),
          Positioned(
              child: Center(child: Text('Login', style: TextStyle(color: Colors.blue, fontSize: 29, fontWeight: FontWeight.w700),)),
              top: size.height / 2,
              left: size.width / 6,
              right: size.width / 6),
          Positioned(
            child: ElevatedButton(
              onPressed: () {  },
              child: Container(
                padding: EdgeInsets.only(top:8.0, bottom: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Constants.IC_FACEBOOK, width: 12, height: 16,),
                    Text(
                      'Connect with Facebook',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottom: size.height / 7,
            left: size.width / 6,
            right: size.width / 6,
          ),
          Positioned(
            child: ElevatedButton(
              onPressed: () {  },
              child: Container(
                padding: EdgeInsets.only(top:8.0, bottom: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(Constants.IC_MOBILE),
                    Text(
                      'Connect with Phone number',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            bottom: size.height / 14,
            left: size.width / 6,
            right: size.width / 6,
          ),
        ],
      ),
    );
  }
}
