import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see images!'),
          backgroundColor: Colors.indigo[400],
        ),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo[400],
          child: Icon(
            Icons.favorite,
            color: Colors.indigo[50],
          ),
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
      ),
    );
  }
}
 