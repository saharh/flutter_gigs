import 'package:flutter/material.dart';
import 'package:flutter_gigs/Models/Model.dart';
import 'package:flutter_gigs/Screens/ProjectAdd.dart';
import 'package:flutter_gigs/Screens/ProjectList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gigs',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.0),
            child: Icon(Icons.search, size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.filter_list, size: 30,),
          )
        ],
        title: Text("Flutter Gigs"),
      ),
      body: Container(
        child: Projects(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProjectAdd())),
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
    );
  }
}
