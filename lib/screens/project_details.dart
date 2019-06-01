import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProjectDetailsPage extends StatelessWidget {
  ProjectDetailsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F5),
      appBar: AppBar(
        elevation: 0,
        title: Text('Flutter Gigs'),
      ),
      body: buildBody(context),
    );
  }

  buildBody(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8),
            color: Theme.of(context).primaryColor,
            child: ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.airplay),
              ),
              title: Text(
                'Calendar Carousel Picker',
                style: Theme.of(context).textTheme.body1.copyWith(color: Colors.white, fontSize: 28),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 8),
            child: Row(
              children: <Widget>[
                Icon(
                  FontAwesomeIcons.solidHeart,
                  color: Colors.red,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8),
                  child: Text('52'),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 16),
                  child: Icon(
                    Icons.message,
                    color: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 8),
                  child: Text('3'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 4),
              child: Row(
                children: <Widget>[
                  CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/med/men/35.jpg')),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'By Alex Smith',
                      style: TextStyle(fontSize: 18, color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: RaisedButton(
                      color: Theme.of(context).primaryColor,
                      onPressed: () => {},
                      child: Text(
                        'CONTACT',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: DescriptionSection(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: StatusSection(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: DiscussionSection(),
          ),
        ],
      ),
    );
  }
}

class DescriptionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Description',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
              style: TextStyle(color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}

class StatusSection extends StatelessWidget {
  StatusSection();

  String title;
  String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Status',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16),
            child: Row(
              children: <Widget>[
                Text(
                  'In progress',
//              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
                  style: TextStyle(color: Colors.black54),
                ),
                Spacer(),
                Expanded(
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () => {},
                    child: Text(
                      'SEE ON GITHUB',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class DiscussionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Discussion',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Container(
              padding: const EdgeInsets.only(top: 0.0, bottom: 16),
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Column(
                  children: <Widget>[
                    Comment(
                        'Eli Reed',
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        'https://randomuser.me/api/portraits/med/men/22.jpg'),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Comment(
                          'Leticia Bufuni',
                          'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.',
                          'https://randomuser.me/api/portraits/med/women/25.jpg'),
                    ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/med/women/33.jpg')),
                    
                  )),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class Comment extends StatelessWidget {
  String name, comment, avatarUrl;

  Comment(this.name, this.comment, this.avatarUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 20,
          backgroundImage: NetworkImage(this.avatarUrl),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            name,
            style: Theme.of(context).textTheme.body1.copyWith(fontSize: 18),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(this.comment),
        ),
      ),
    );
  }
}
