import 'package:flutter/material.dart';
import 'package:flwpstart/models/post.dart';
import 'package:transparent_image/transparent_image.dart';

class SinglePost extends StatelessWidget {

  final Post post;
  SinglePost({Key key, @required var this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(post.title.rendered),
      ),
      body: new Padding(
        padding: EdgeInsets.all(16.0),
        child: new ListView(
          children: <Widget>[
            new FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: post.featuredMedia == 0
                  ? 'images/placeholder.png'
                  : post.links.wpFeaturedmedia[0].href,
            ),
            new Text(post.content.rendered.replaceAll(new RegExp(r'<[^>]*>'), ''))
          ],
        ),
      ),
    );
  }
}
