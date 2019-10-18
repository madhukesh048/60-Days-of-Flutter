import 'package:chatapp/pages/RegistrationPage.dart';
import 'package:chatapp/pages/SplashPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chatapp/auth/auth.dart';
import 'package:chatapp/widgets/ConversationPageSlide.dart';
import 'package:chatapp/widgets/SignInButton.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            color: Colors.purpleAccent,
            gradient:
                LinearGradient(colors: [Colors.blue[500], Colors.purple[300]])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/launcher/ic_foreground.png",
                height: 180,
                width: 180,
              ),
              SizedBox(
                height: 100,
              ),
              SignInButton(
                title: 'Sign in with Google',
                assetName: 'assets/icons/search.svg',
                onTap: () {
                  print('Sign in with google Button');
                  signInWithGoogle().whenComplete(() async {
                    print('${FirebaseAuth.instance.currentUser()}');
                    FirebaseUser user =
                        await FirebaseAuth.instance.currentUser();
                    if (user != null)
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashScreen()));
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
