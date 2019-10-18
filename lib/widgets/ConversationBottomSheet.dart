import 'package:chatapp/widgets/ConversationPageSlide.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/config/Palette.dart';
import 'package:chatapp/config/Styles.dart';
import 'package:chatapp/widgets/ChatRowWidget.dart';
import 'package:chatapp/widgets/NavigationPillWidget.dart';

class ConversationBottomSheet extends StatefulWidget {
  @override
  _ConversationBottomSheetState createState() =>
      _ConversationBottomSheetState();
}

class _ConversationBottomSheetState extends State<ConversationBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ConversationPageSlide()));
        },
        child: ListView(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            NavigationPillWidget(),
            Center(
                child: Text(
              'Messages',
              style: Styles.textHeading,
            )),
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 5,
              separatorBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: 75, right: 20),
                  child: Divider(
                    color: Palette.accentColor,
                  )),
              itemBuilder: (context, index) {
                return ChatRowWidget();
              },
            )
          ],
        ),
      ),
    );
  }
}
