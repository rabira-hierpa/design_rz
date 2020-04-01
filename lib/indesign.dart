import 'package:flutter/material.dart';

class IndesignDesign extends StatelessWidget {
  final String pageDesign;
  const IndesignDesign({Key key, @required this.pageDesign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent[400],
      appBar: AppBar(
        title: Text('InDesign Designs'),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.timelapse,
              size: 100,
              color: Colors.white54,
            ),
            Text('Coming Soon',
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
