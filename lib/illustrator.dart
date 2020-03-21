import 'package:flutter/material.dart';

class IllustratorDesign extends StatelessWidget {
  final String pageDesign;
  const IllustratorDesign({Key key, this.pageDesign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[800],
      appBar: AppBar(
        title: Text('Illustrator Designs'),
        backgroundColor: Colors.orange[900],
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.timelapse,size: 100,color: Colors.white54,),
            Text('Coming Soon', style: TextStyle(fontSize: 36,color: Colors.white,fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
