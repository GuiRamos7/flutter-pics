import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> images;

  ImageList(this.images);

  Widget build(context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return buildImage(images[index]);
      },
    );
  }
}

Widget buildImage(ImageModel image) {
  return Container(
    margin: EdgeInsets.all(50.0),
    padding: EdgeInsets.all(20.0),
    decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 4,
        ),
        borderRadius: BorderRadius.circular(12)),
    child: new Column(
      children: <Widget>[
        new Padding(
          child: Image.network(image.url),
          padding: EdgeInsets.only(bottom: 50.0),
        ),
        new Text(image.title),
      ],
    ),
  );
}
