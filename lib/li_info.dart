library li_info;

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';

enum Buttons {
  Google,
  Facebook,
  Microsoft,
  LinkedIn,
  Twitter,
  GitHub,
  Apple,
  Email,
  KishorParmar,
}

/*
*
* Custom Button widgets
*
* */

class SignInButton extends StatelessWidget {
  final Function? onPressed;
  final Buttons? button;
  final String? text;
  final ShapeBorder? shape;
  final IconData? icon;

  SignInButton(this.button, {@required this.onPressed, this.text, this.shape, this.icon})
      : assert(button != null),
        assert(onPressed != null);

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Email:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Google:
        return Btn(
          key: ValueKey("Google"),
          text: text ?? "Sign In With Google",
          image: Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image(
                image: AssetImage(
                  'assets/google_logo.png',
                  package: 'li_info',
                ),
                height: 25.0,
              ),
            ),
          ),
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Facebook:
        return Btn(
          key: ValueKey("Facebook"),
          text: text ?? "Sign In With Facebook",
          icon: icon,
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Color(0xFF3B5998),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.GitHub:
        return Btn(
          key: ValueKey("Github"),
          text: text ?? "Sign In With Github",
          icon: icon,
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Color(0xFF444444),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.Apple:
        return Btn(
          key: ValueKey("Apple"),
          text: text ?? "Sign In With Apple",
          icon: icon,
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.LinkedIn:
        return Btn(
          key: ValueKey("LinkedIn"),
          text: text ?? "Sign In With LinkedIn",
          icon: icon,
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Color(0xFF007BB6),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.Microsoft:
        return Btn(
          key: ValueKey("Microsoft"),
          text: text ?? "Sign In With Microsoft",
          image: Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(0.0),
              child: Image(
                image: AssetImage(
                  'assets/microsoft_logo.png',
                  package: 'li_info',
                ),
                height: 27.0,
              ),
            ),
          ),
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Twitter:
        return Btn(
          key: ValueKey("Twitter"),
          text: text ?? "Sign In With Twitter",
          icon: icon,
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Color(0xFF1DA1F2),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.KishorParmar:
        return Btn(
          key: ValueKey("KishorParmar"),
          text: text ?? "Kishor Parmar",
          icon: icon,
          onPressed: () {
            if (onPressed != null) {
              onPressed?.call();
            }
          },
          backgroundColor: Color(0xFFFF0A0A),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      default:
        {
          return Container();
        }
    }
  }
}

class Btn extends StatelessWidget {
  final Color? textColor, backgroundColor, iconColor;
  final Function? onPressed;
  final String? text;
  final IconData? icon;
  final Widget? image;
  final ShapeBorder? shape;

  Btn({Key? key, this.backgroundColor, this.onPressed, this.text, this.icon, this.textColor, this.iconColor, this.image, this.shape});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      onPressed: () {
        if (onPressed != null) {
          onPressed?.call();
        }
      },
      color: backgroundColor,
      shape: shape ?? ButtonTheme.of(context).shape,
      padding: const EdgeInsets.all(0),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 220,
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                child: image != null
                    ? image
                    : Icon(
                        icon,
                        size: 20,
                        color: this.iconColor,
                      ),
              ),
              Text(
                text!,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: textColor,
                  fontSize: 14,
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*
*
* Custom TextField widgets
*
* */
//ignore: must_be_immutable
class EditText extends StatefulWidget {
  EditText({Color? focusColor, Color? unFocusColor, TextStyle? style, TextEditingController? textEditingController, String? hintText, EdgeInsets? margin, TextInputAction? textInputAction, TextInputType? keyboardType}) {
    if (focusColor != null) this.focusColor = focusColor;
    if (unFocusColor != null) this.unFocusColor = unFocusColor;
    if (style != null) this.style = style;
    if (hintText != null) this.hintText = hintText;
    if (textEditingController != null) this.textEditingController = textEditingController;
    if (margin != null) this.margin = margin;
    if (textInputAction != null) this.textInputAction = textInputAction;
    if (keyboardType != null) this.keyboardType = keyboardType;
  }

  bool isEmailFocus = false;
  Color? focusColor;
  Color? unFocusColor;
  TextStyle? style;
  String? hintText;
  var textEditingController = new TextEditingController();
  EdgeInsets? margin;
  TextInputAction? textInputAction;
  TextInputType? keyboardType;

  @override
  _EditTextState createState() => _EditTextState();
}

class _EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Focus(
        onFocusChange: (values) {
          setState(() {
            widget.isEmailFocus = values;
          });
        },
        child: Container(
          margin: widget.margin ?? EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                widget.isEmailFocus ? Colors.white : Colors.transparent,
                widget.isEmailFocus ? Colors.white : Colors.transparent,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(
                color: widget.isEmailFocus
                    ? widget.focusColor == null
                        ? Color(0xFFFFFF).withOpacity(0.1)
                        : widget.focusColor!.withOpacity(0.1)
                    : widget.unFocusColor == null
                        ? Color(0xFFFFFF).withOpacity(0)
                        : widget.unFocusColor!.withOpacity(0),
                spreadRadius: 4,
                blurRadius: 10,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Container(
            color: Colors.transparent,
            child: TextField(
              onSubmitted: (_) => FocusScope.of(context).nextFocus(),
              controller: widget.textEditingController,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              style: widget.style,
              autocorrect: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 25.0),
                hintText: widget.hintText,
                hintStyle: TextStyle(color: Colors.grey),
                fillColor: Colors.white70,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12.0)),
                  borderSide: BorderSide(color: Color(0xFFEFEFEF), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Color(0xFF622CFD), width: 2),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
*
*  this method is used to get image path from gallery
*
* */

Future<String?> getFile() async {
  String? path;
  List<Media>? res = await ImagesPicker.pick(
    count: 3,
    pickType: PickType.all,
    language: Language.System,
    // maxSize: 500,
    cropOpt: CropOption(
      aspectRatio: CropAspectRatio.wh16x9,
    ),
  );
  if (res != null) {
    print(res.map((e) => e.path).toList());

    path = res[0].thumbPath;
  }
  return path;
}

class SelectFileWidgets extends StatefulWidget {
  @override
  _SelectFileWidgets createState() => _SelectFileWidgets();
}

/*
*
*  Image selection and file downloading
*
* */
class _SelectFileWidgets extends State<SelectFileWidgets> {
  String? path;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              child: Text('pick'),
              onPressed: () async {
                List<Media>? res = await ImagesPicker.pick(
                  count: 3,
                  pickType: PickType.all,
                  language: Language.System,
                  // maxSize: 500,
                  cropOpt: CropOption(
                    aspectRatio: CropAspectRatio.wh16x9,
                  ),
                );
                if (res != null) {
                  print(res.map((e) => e.path).toList());
                  setState(() {
                    path = res[0].thumbPath;
                  });
                  // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
                  // print(status);
                }
              },
            ),
            ElevatedButton(
              child: Text('openCamera'),
              onPressed: () async {
                List<Media>? res = await ImagesPicker.openCamera(
                  pickType: PickType.image,
                  quality: 0.5,
                  // cropOpt: CropOption(
                  //   aspectRatio: CropAspectRatio.wh16x9,
                  // ),
                  // maxTime: 60,
                );
                if (res != null) {
                  print(res[0].path);
                  setState(() {
                    path = res[0].thumbPath;
                  });
                }
              },
            ),
            ElevatedButton(
              onPressed: () async {
                File file = await downloadFile('https://cdn.chavesgu.com/logo.png');
                bool res = await ImagesPicker.saveImageToAlbum(file, albumName: "chaves");
                print(res);
              },
              child: Text('saveNetworkImageToAlbum'),
            ),
            ElevatedButton(
              onPressed: () async {
                File file = await downloadFile('https://cdn.chavesgu.com/SampleVideo.mp4');
                bool res = await ImagesPicker.saveVideoToAlbum(file, albumName: "chaves");
                print(res);
              },
              child: Text('saveNetworkVideoToAlbum'),
            ),
            path != null
                ? Container(
                    height: 200,
                    child: Image.file(
                      File(path!),
                      fit: BoxFit.contain,
                    ),
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Future<File> downloadFile(String url) async {
    Dio simple = Dio();
    String savePath = Directory.systemTemp.path + '/' + url.split('/').last;
    await simple.download(url, savePath, options: Options(responseType: ResponseType.bytes));
    print(savePath);
    File file = new File(savePath);
    return file;
  }
}
