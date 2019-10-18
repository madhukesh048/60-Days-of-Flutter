import 'package:flutter/material.dart';
import 'package:chatapp/config/Palette.dart';
import 'package:chatapp/auth/auth.dart';
import 'package:chatapp/pages/loginPage.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height = 100;
  const ChatAppBar();
  @override
  Widget build(BuildContext context) {
    var textHeading = TextStyle(color: Palette.primaryTextColor, fontSize: 20);
    var textStyle = TextStyle(color: Palette.secondaryTextColor);

    return Material(
        child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0,
              )
            ]),
            child: Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Palette.primaryBackgroundColor,
                child: Row(children: <Widget>[
                  Expanded(
                      flex: 7,
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                            flex: 7,
                            child: Container(
                                child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                    flex: 2,
                                    child: Center(
                                        child: IconButton(
                                      icon: Icon(Icons.attach_file),
                                      color: Palette.secondaryColor,
                                      onPressed: () {
                                        signOutGoogle();
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    LoginPage()));
                                      },
                                    ))),
                                Expanded(
                                    flex: 6,
                                    child: Container(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(name, style: textHeading),
                                        Text(email, style: textStyle)
                                      ],
                                    ))),
                              ],
                            )),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                padding: EdgeInsets.fromLTRB(20, 5, 5, 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Photos',
                                      style: textStyle,
                                    ),
                                    VerticalDivider(
                                      width: 30,
                                      color: Palette.primaryTextColor,
                                    ),
                                    Text(
                                      'Videos',
                                      style: textStyle,
                                    ),
                                    VerticalDivider(
                                      width: 30,
                                      color: Palette.primaryTextColor,
                                    ),
                                    Text('Files', style: textStyle)
                                  ],
                                )),
                          ),
                        ],
                      ))),
                  Expanded(
                      flex: 3,
                      child: Container(
                          child: Center(
                              child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          imageUrl,
                        ),
                      )))),
                ]))));
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
