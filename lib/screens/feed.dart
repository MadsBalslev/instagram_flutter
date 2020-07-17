import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/custom_app_bar.dart';
import 'package:instagram_clone/utils/logo_icons.dart';
import 'package:instagram_clone/widgets/post.dart';

class Feed extends StatelessWidget {
  List<Post> getPosts() {
    List<Post> posts = [];

    for (var i = 0; i < 10; i++) {
      posts.add(Post());
    }

    return posts;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        logo: Logo.logo,
      ),
      body: ListView(
        children: getPosts(),
      ),
    );
  }
}
