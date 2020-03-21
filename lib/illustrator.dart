import 'package:flutter/material.dart';

class IllustratorDesign extends StatelessWidget {
  final String pageDesign;
  const IllustratorDesign({Key key, this.pageDesign}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Rዚ'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(pageDesign, style: TextStyle(fontSize: 36))
          ],
        ),
      ),
    );
  }
}
