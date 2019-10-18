import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/auth/auth.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.lightBlueAccent,
          Colors.lightBlueAccent,
        ])),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  imageUrl,
                ),
              ),
              SizedBox(height: 30,),
             
            ],
          ),
        ),
      ),
    );
  }
}
