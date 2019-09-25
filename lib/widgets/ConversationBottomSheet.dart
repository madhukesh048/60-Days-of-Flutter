import 'package:flutter/material.dart';
import 'package:sixty_days_of_flutter/config/Palette.dart';
import 'package:sixty_days_of_flutter/widgets/ChatRowWidget.dart';
import 'package:sixty_days_of_flutter/widgets/NavigationPillWidget.dart';

class ConversationBottomSheet extends StatefulWidget {
  @override
  _ConversationBottomSheetState createState() => _ConversationBottomSheetState();
}

class _ConversationBottomSheetState extends State<ConversationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          NavigationPillWidget(),
            Center(child: Text('Messages', )),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: 5,
                separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: 75,right: 20),
                    child: Divider(
                  color: Palette.accentColor,
                )),
                itemBuilder: (context, index) {
                  return ChatRowWidget();
                },
              )
        ],
      ),
      
    );
  }
}