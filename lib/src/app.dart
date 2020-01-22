import 'package:flutter/material.dart';
import 'package:http/http.dart';


class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchedImage() { }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see images!'),
          backgroundColor: Colors.black87,
        ),
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black87,
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: fetchedImage,
        ),
      ),
    );
  }
}
