import 'package:flutter/material.dart';
class ViewImage extends StatefulWidget {
  @override
  _ViewImageState createState() => _ViewImageState();
}

class _ViewImageState extends State<ViewImage> {
  Map imageData = {};
  @override
  Widget build(BuildContext context) {
    imageData = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Image.asset(
        imageData['img']
      ),
    );
  }
}
