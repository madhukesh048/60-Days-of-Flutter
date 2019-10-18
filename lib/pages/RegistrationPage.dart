import 'package:chatapp/widgets/ConversationBottomSheet.dart';
import 'package:chatapp/widgets/ConversationPageSlide.dart';
import 'package:flutter/material.dart';
import 'package:chatapp/auth/auth.dart';
import 'package:flutter/services.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var _formKey = GlobalKey<FormState>();
  String age;
  String userName;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.white,
          Colors.white,
        ])),
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Theme(
                data: ThemeData(
                    accentColor: Colors.blue, primaryColor: Colors.blue),
                child: Form(
                  key: _formKey,
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
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "How old are you?",
                        style: TextStyle(color: Colors.blue, fontSize: 22),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextFormField(
                          cursorColor: Colors.blue,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            labelStyle: TextStyle(color: Colors.blue),
                          ),
                          validator: (value) {
                            if (value.length == 0 ||
                                double.parse(value) <= 12) {
                              return ('Age should be over 12 years');
                            }
                            return null;
                          },
                          onSaved: (val) {
                            age = val;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Choose username",
                        style: TextStyle(color: Colors.blue, fontSize: 22),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: TextFormField(
                          cursorColor: Colors.blue,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue)),
                            labelStyle: TextStyle(color: Colors.blue),
                          ),
                          onSaved: (String val) {
                            userName = val;
                          },
                          validator: (value) {
                            if (value.length == 0) {
                              return "cannot be empty";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0)),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            _formKey.currentState.save();
                            print('Age:$age');
                            print('UserName:$userName');
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ConversationBottomSheet()));
                          }
                        },
                        child: Text(
                          "Done",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
