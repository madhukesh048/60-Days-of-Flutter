import 'package:flutter/material.dart';
import 'package:sixty_days_of_flutter/pages/ConversationPageList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: ConversationPageList(),
    );
  }
}
