import 'package:flutter/material.dart';
import 'package:chatapp/config/Palette.dart';
import 'package:chatapp/widgets/ChatAppBar.dart';
import 'package:chatapp/widgets/MessageListWidget.dart';

class ConversationPage extends StatefulWidget {
  @override
  _ConversationPageState createState() => _ConversationPageState();
  const ConversationPage();
}

class _ConversationPageState extends State<ConversationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBar(),
      body: MessageListWidget(),
    );
  }
}
