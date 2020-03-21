import 'package:flutter/material.dart';

class IndesignDesign extends StatelessWidget {
  final String pageDesign;
  const IndesignDesign({Key key, @required this.pageDesign}) : super(key: key);

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
          children: <Widget>[Text(pageDesign, style: TextStyle(fontSize: 36))],
        ),
      ),
    );
  }
}
