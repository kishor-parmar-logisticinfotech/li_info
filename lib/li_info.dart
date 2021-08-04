library li_info;

import 'package:flutter/material.dart';

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
          onPressed: onPressed,
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
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Facebook:
        return Btn(
          key: ValueKey("Facebbok"),
          text: text ?? "Sign In With Facebook",
          icon: icon,
          onPressed: onPressed,
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
          onPressed: onPressed,
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
          onPressed: onPressed,
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
          onPressed: onPressed,
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
          onPressed: onPressed,
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
          onPressed: onPressed,
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
          onPressed: onPressed,
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
      onPressed: () => onPressed,
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
