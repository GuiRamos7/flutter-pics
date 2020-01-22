// Global Import
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';

// Local imports 
import './models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> images = [];

  void fetchedImage() async {
    counter++;
    var response =
        await get("https://jsonplaceholder.typicode.com/photos/$counter");
    var imageModel = new ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see images!'),
          backgroundColor: Colors.black87,
        ),
        body: Container(
          child: ImageList(images),
        ),
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
