import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/zuri.jpeg');
    Image image = Image(image: assetImage, height: 150.0, width: 150.0,);
    return Container(child: image,);
  }
}