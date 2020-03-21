import 'package:flutter/material.dart';

class PhotoshopDesign extends StatefulWidget {
  final String pageDesign;
  const PhotoshopDesign({Key key, this.pageDesign}) : super(key: key);
  @override
  _PhotoshopDesign createState() => _PhotoshopDesign();
}

class _PhotoshopDesign extends State<PhotoshopDesign> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photoshop Designs'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[Image.asset('assets/img/$n.jpg')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        setState(() {
          n >= 45 ? n = 1 : n++;
        });
      },child: Icon(Icons.navigate_next),
      ),
    );
  }
}
