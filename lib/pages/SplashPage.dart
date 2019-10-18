import 'dart:async';
import 'package:chatapp/pages/RegistrationPage.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/auth/auth.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => RegistrationPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              '''Hey, $name
Welcome!''',
              style: TextStyle(color: Colors.white, fontSize: 42),
            ),
          ),
          SizedBox(
            height: 36,
          ),
         SpinKitThreeBounce(
                color: Colors.white,
                size: 50.0,
              )
        ],
      ),
    );
  }
}
