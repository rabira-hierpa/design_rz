import 'package:design_rz/ViewImage.dart';
import 'package:design_rz/home.dart';
import 'package:design_rz/illustrator.dart';
import 'package:design_rz/indesign.dart';
import 'package:flutter/material.dart';
import 'package:design_rz/photoshop.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/home', routes: {
      '/home': (context) => Home(),
      '/ps': (context) => PhotoshopDesign(),
      '/ai': (context) => IllustratorDesign(),
      '/id': (context) => IndesignDesign(),
      '/viewImage':(context) => ViewImage()
    });
  }
}
