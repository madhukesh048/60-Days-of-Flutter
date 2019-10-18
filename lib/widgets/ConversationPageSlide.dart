import 'package:flutter/material.dart';
import 'package:rubber/rubber.dart';
import 'package:chatapp/pages/ConversationPage.dart';
import 'package:chatapp/widgets/ConversationBottomSheet.dart';
import 'package:chatapp/widgets/InputWidget.dart';

class ConversationPageSlide extends StatefulWidget {
  @override
  _ConversationPageSlideState createState() => _ConversationPageSlideState();

  const ConversationPageSlide();
}

class _ConversationPageSlideState extends State<ConversationPageSlide>
    with SingleTickerProviderStateMixin {
  var controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    controller = RubberAnimationController(
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            body: Column(
              children: <Widget>[
                Expanded(
                    child: PageView(
                  children: <Widget>[
                    ConversationPage(),
                    ConversationPage(),
                    ConversationPage()
                  ],
                )),
                Container(
                    child: GestureDetector(
                        child: InputWidget(),
                        onPanUpdate: (details) {
                          if (details.delta.dy < 0) {
                            _scaffoldKey.currentState
                                .showBottomSheet<Null>((BuildContext context) {
                              return ConversationBottomSheet();
                            });
                          }
                        }))
              ],
            )));
  }
}
