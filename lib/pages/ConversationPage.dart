import 'package:flutter/material.dart';
import 'package:sixty_days_of_flutter/config/Palette.dart';
import 'package:sixty_days_of_flutter/widgets/ChatAppBar.dart';
import 'package:sixty_days_of_flutter/widgets/MessageListWidget.dart';
import 'package:sixty_days_of_flutter/widgets/ConversationBottomSheet.dart';
import 'package:sixty_days_of_flutter/widgets/InputWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            appBar: ChatAppBar(), 
            body: Container(
                color: Palette.chatBackgroundColor,
                child: Stack(children: <Widget>[
                  Column(
                    children: <Widget>[
                      MessageListWidget(),
                      GestureDetector(
                          child: InputWidget(),
                          onPanUpdate: (details) {
                            if (details.delta.dy < 0) {
                              _scaffoldKey.currentState.showBottomSheet<Null>(
                                  (BuildContext context) {
                                return ConversationBottomSheet();
                              });
                            }
                          })
                    ],
                  ),
                ]))));
  }
}
