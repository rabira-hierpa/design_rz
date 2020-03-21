import 'package:design_rz/illustrator.dart';
import 'package:design_rz/indesign.dart';
import 'package:design_rz/photoshop.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Rዚ'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <
          Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PhotoshopDesign()));
            },
            child: Container(
                child: Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              color: Colors.blue[500],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'assets/img/ps.png',
                    width: 130,
                    height: 130,
                  ),
                  Text('Photoshop Designs', style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold))
                ],
              ),
            )),
          ),
        ),
        Expanded(
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => IllustratorDesign(pageDesign: 'Illustrator Designs',)));
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                color: Colors.orange[800],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset(
                      'assets/img/ai.png',
                      width: 130,
                      height: 130,
                    ),
                    Text('Illustrator Designs', style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold))
                  ],
                ),
              )),
        ),
        Expanded(
            child: GestureDetector(
                onTap: () {
                   Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => IndesignDesign(pageDesign: 'InDesign Designs',)));
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  color: Colors.pinkAccent[400],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset(
                        'assets/img/id.png',
                        width: 130,
                        height: 130,
                      ),
                      Text('InDesign Designs', style: TextStyle(fontSize: 28,color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  ),
                )))
      ]),
    );
  }
}
