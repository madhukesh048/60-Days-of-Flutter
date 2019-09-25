import 'package:flutter/material.dart';
import 'package:sixty_days_of_flutter/config/Palette.dart';
import 'package:sixty_days_of_flutter/widgets/ChatAppBar.dart';
import 'package:sixty_days_of_flutter/widgets/MessageListWidget.dart';

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
