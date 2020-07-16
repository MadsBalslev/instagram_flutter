import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/custom_app_bar.dart';
import 'package:instagram_clone/utils/logo_icons.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        logo: Logo.logo,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          radius: 16,
                          backgroundImage:
                              AssetImage('assets/images/my_profile.jpeg'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'mads_balslev',
                              style: TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 13.5,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Aalborg, Denmark',
                              style: TextStyle(
                                fontFamily: 'SFPro',
                                fontSize: 11.5,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Container(
                constraints: BoxConstraints(
                  maxHeight: 339.0,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/my_post_1.jpg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.favorite_border,
                          size: 23,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          Icons.insert_comment,
                          size: 23,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Icon(
                          Icons.send,
                          size: 23,
                        ),
                      ],
                    ),
                    Icon(
                      Icons.bookmark_border,
                      size: 23,
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
