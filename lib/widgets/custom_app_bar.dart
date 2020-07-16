import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final IconData logo;

  CustomAppBar({this.logo}) : preferredSize = Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      centerTitle: true,
      elevation: 0.5,
      backgroundColor: Colors.white,
      title: Container(
        width: 106.0,
        child: Icon(
          logo,
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
        SizedBox(
          width: 10,
        )
      ],
    );
  }
}
