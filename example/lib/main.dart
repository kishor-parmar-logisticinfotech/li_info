import 'dart:io';

import 'package:flutter/material.dart';
import 'package:li_info/li_info.dart';

// main method run app form here
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PluginExample();
  }
}

class PluginExample extends StatefulWidget {
  @override
  _PluginExampleState createState() => _PluginExampleState();
}

class _PluginExampleState extends State<PluginExample> {
  String label = "Clicked button!";
  String? imagePath = null;
  var emailEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        accentColor: Colors.red,
      ),
      home: Scaffold(
        body: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(label),
                  SizedBox(height: 10.0),
                  EditText(
                    margin: EdgeInsets.all(10.0),
                    focusColor: Color(0xFFEC3636),
                    style: TextStyle(color: Color(0xFF000000)),
                    hintText: "Enter email",
                    textEditingController: emailEditingController,
                    unFocusColor: Color(0xFFFFFF),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10.0),
                  SignInButton(
                    Buttons.KishorParmar,
                    text: imagePath != null ? "Remove File" : "Select Image",
                    onPressed: () async {
                      if (imagePath != null) {
                        setState(() {
                          imagePath = null;
                        });
                      } else {
                        var temp = await getFile();
                        setState(() {
                          imagePath = (temp != null ? temp : null)!;
                          label = 'File Path: ${temp != null ? temp : ""}';
                        });
                      }
                    },
                  ),
                  imagePath != null ? Image.file(File(imagePath!)) : Container(),
                  SignInButton(
                    Buttons.Google,
                    onPressed: () {
                      setState(() {
                        label = 'Google';
                      });
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SignInButton(
                    Buttons.Facebook,
                    onPressed: () {
                      setState(() {
                        label = 'Facebook';
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SignInButton(
                    Buttons.Apple,
                    onPressed: () {
                      setState(() {
                        label = 'Apple';
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SignInButton(
                    Buttons.Microsoft,
                    onPressed: () {
                      setState(() {
                        label = 'Microsoft';
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SignInButton(
                    Buttons.GitHub,
                    text: "Sign up with GitHub",
                    onPressed: () {
                      setState(() {
                        label = 'Github';
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SignInButton(
                    Buttons.Twitter,
                    text: "Sign In with Twitter",
                    onPressed: () {
                      setState(() {
                        label = 'Twitter';
                      });
                    },
                  ),
                  SignInButton(
                    Buttons.KishorParmar,
                    text: "Custom button",
                    onPressed: () {
                      setState(() {
                        label = 'Custom button';
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
