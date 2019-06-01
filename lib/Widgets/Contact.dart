import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  final typeStyle = TextStyle(fontSize: 30.0);
  final resultType = TextStyle(fontSize: 20.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: ListView(
        children: <Widget>[
          Text(
            "WhatsApp",
            style: typeStyle,
            textAlign: TextAlign.center,
          ),
          MaterialButton(
            onPressed: () => launch("tel:+972-55-555-5555"),
            child: Text("+972-55-555-5555"),
          ),
          Text(
            "Github",
            style: typeStyle,
            textAlign: TextAlign.center,
          ),
          MaterialButton(
            onPressed: () => launch("https://github.com/Agoneous/flutter_gigs"),
            child: Text(
              "https://github.com/Agoneous/flutter_gigs"
            ),
          ),
          Text(
            "StackOverflow",
            style: typeStyle,
            textAlign: TextAlign.center,
          ),
          MaterialButton(
            onPressed: () => launch("https://github.com/Agoneous/flutter_gigs"),
            child: Text(
              "https://stackoverflow.com/users/1018172/agon-eous",
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
