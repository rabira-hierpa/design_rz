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
        backgroundColor: Colors.blueAccent[900],
        title: Text('Photoshop Designs'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueAccent[100],
      body: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(child: Center(child:Image.asset('assets/img/$n.jpg')),),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RaisedButton(
                  child: Icon(Icons.navigate_before,color: Colors.white,), 
                        onPressed: () {
                            setState(() {
                              n >= 45 ? n = 1 : n++;
                            });
                        },
                 color: Colors.blueAccent,
                 shape: CircleBorder()
                 ),
                RaisedButton(
                  child: Icon(Icons.navigate_next,color: Colors.white,), 
                        onPressed: () {
                            setState(() {
                              n == 1 ? n = 45 : n--;
                            });
                        },
                 color: Colors.blueAccent,
                 shape: CircleBorder()
                 ),
            ],),],
        ),
    );
  }
}
