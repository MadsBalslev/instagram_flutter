import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/logo_icons.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: Container(
          width: 106.0,
          child: Icon(
            Logo.logo,
            size: 30.0,
            color: Colors.black,
          ),
        ),
        leading: Icon(
          Icons.photo_camera,
          color: Colors.black,
          size: 25,
        ),
        actions: <Widget>[
          Icon(
            Icons.live_tv,
            color: Colors.black,
            size: 25,
          ),
          SizedBox(
            width: 16,
          ),
          Icon(
            Icons.send,
            color: Colors.black,
            size: 25,
          ),
        ],
      ),
    );
  }
}
