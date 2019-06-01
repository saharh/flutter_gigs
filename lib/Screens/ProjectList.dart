import 'package:flutter/material.dart';
import 'package:flutter_gigs/Widgets/Contact.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text("Project 1"),
                subtitle: Text("Description"),
                trailing: Column(
                  children: <Widget>[
                    Icon(FontAwesomeIcons.solidHeart, color: Colors.amber,),
                    Text(
                      "341",
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
                leading: Icon(Icons.adb, size: 36.0,),
                onTap: () =>
                    showModalBottomSheet(context: context, builder: (context) {
                      return Container(
                        child: Center(
                          child: Contact(),
                        ),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
