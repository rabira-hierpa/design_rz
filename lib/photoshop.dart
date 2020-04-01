import 'package:flutter/material.dart';
import 'package:snaplist/snaplist.dart';

class PhotoshopDesign extends StatefulWidget {
  final String pageDesign;
  const PhotoshopDesign({Key key, this.pageDesign}) : super(key: key);
  @override
  _PhotoshopDesign createState() => _PhotoshopDesign();
}

class _PhotoshopDesign extends State<PhotoshopDesign> {
  int n = 1;
  List<String> imgUrls = [];
  @override
  void initState() {
    super.initState();
    for (var i = 1; i <= 45; i++) {
      imgUrls.add('assets/img/$i.jpg');
    }
//    print(imgUrls);
  }

  @override
  Widget build(BuildContext context) {
    final Size cardSize = Size(300.0, 460.0);
    return Scaffold(
      appBar: AppBar(
        title: Text('Photoshop Desings'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SnapList(
        padding: EdgeInsets.only(
            left: (MediaQuery.of(context).size.width - cardSize.width) / 2),
        sizeProvider: (index, data) => cardSize,
        separatorProvider: (index, data) => Size(10.0, 10.0),
        positionUpdate: (int index) {
          if (index == imgUrls.length - 1) {
            _loadMoreItems();
          }
        },
        builder: (context, index, data) {
          return ClipRRect(
            borderRadius: new BorderRadius.circular(16.0),
            child: GestureDetector(
                child: Image.asset(
                  imgUrls[index],
                  fit: BoxFit.scaleDown,
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/viewImage',
                      arguments: {'img': imgUrls[index]});
                }),
          );
        },
        count: imgUrls.length,
      ),
    );
  }

  void _loadMoreItems() {
    setState(() {
      imgUrls = new List.from(imgUrls)..addAll(imgUrls);
    });
  }
}
