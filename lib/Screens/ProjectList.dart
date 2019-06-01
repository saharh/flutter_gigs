import 'package:flutter/material.dart';
import 'package:flutter_gigs/screens/project_details.dart';
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
            new ProjectItem("Traffic Notifier", "Get an alert on when to leave the office when the traffic is minimal!", "352", 'https://cdn2.iconfinder.com/data/icons/pix-glyph-set/50/520473-3_car-512.png'),
            new ProjectItem("Expenses Tracker", "Keep track of all your expenses, and know when you are over budget.", "230", 'http://chittagongit.com/download/37378'),
            new ProjectItem("Another Project", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', "50", null),
            new ProjectItem("Another Project", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', "50", null),
            new ProjectItem("Another Project", 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', "50", null),
          ],
        ),
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  String title, description, heartCount, avatarUrl;

  ProjectItem(this.title, this.description, this.heartCount, this.avatarUrl);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text(this.title),
          subtitle: Text(this.description, overflow: TextOverflow.ellipsis,),
          trailing: Column(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.solidHeart,
                color: Colors.red,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  this.heartCount,
                  style: TextStyle(fontSize: 18.0, color: Colors.red),
                ),
              ),
            ],
          ),
          leading: CircleAvatar(
            maxRadius: 20,
            backgroundColor: Colors.transparent,
            child: this.avatarUrl != null ? Image(image: NetworkImage(this.avatarUrl)) : Icon(Icons.insert_chart, size: 40,),
          ),
          onTap: () => Navigator.push(context, new MaterialPageRoute(builder: (context) => ProjectDetailsPage()))),
    );
  }
}
