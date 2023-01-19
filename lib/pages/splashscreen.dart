import 'dart:async';

import 'package:crud_mysql/pages/onboard.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
void initState() {
  super.initState();
  StartSplashScreen();
}

StartSplashScreen() async {
  var duration = const Duration(seconds: 5);
  return Timer(duration, (() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) {
        return OnboardOne();
      })
    );    
  }));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/sttb.png'))
                      ),
                    ),
                    Text("TIFRP 20 A - Mobile II"),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/logo.png'), alignment: Alignment.center)
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/city.png'), alignment: Alignment.bottomCenter)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
