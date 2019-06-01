import 'package:flutter/material.dart';

class ProjectAdd extends StatelessWidget {
  final divider = Padding(padding: EdgeInsets.symmetric(vertical: 10.0));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create new project"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Project Title",
              ),
            ),
            divider,
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Project Description",
                  counterText: "Project Description".length.toString()
              ),
              maxLines: 5,
            ),
            divider,
            TextField(
              decoration: InputDecoration(
                  hintText: "(optional) GitHub URL",
                  border: OutlineInputBorder()),
            ),
            divider,
            MaterialButton(
              child: Text("OK", style: TextStyle(color: Colors.white),),
              onPressed: () => Navigator.pop(context),
              shape: BeveledRectangleBorder(),
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
