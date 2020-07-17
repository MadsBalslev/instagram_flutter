import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/constants.dart';

class Post extends StatelessWidget {
  const Post({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                        style: kPostTextBold,
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RichText(
                text: TextSpan(style: kPostText, children: <TextSpan>[
                  TextSpan(text: 'Liked by '),
                  TextSpan(text: 'mads_balslev', style: kPostTextBold),
                  TextSpan(text: ' and '),
                  TextSpan(text: '263 others', style: kPostTextBold),
                ]),
              ),
              RichText(
                text: TextSpan(
                  style: kPostText,
                  children: <TextSpan>[
                    TextSpan(
                      text: 'mads_balslev ',
                      style: kPostTextBold,
                    ),
                    TextSpan(
                      text:
                          'En smuk tur til Italiens kyster, med hele familien på slæb',
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
