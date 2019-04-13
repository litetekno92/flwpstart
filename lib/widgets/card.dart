import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flwpstart/models/embedpost.dart';
import 'package:flwpstart/widgets/single.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_html_view/flutter_html_view.dart';

class PostCard extends StatefulWidget {
  final Post post;

  PostCard(this.post);

  @override
  _PostCardState createState() => _PostCardState(post);
}

class _PostCardState extends State<PostCard> {
  Post post;

  _PostCardState(this.post);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              new Text(post.embedded.wpFeaturedmedia[0].sourceUrl ?? ''),
              // new FadeInImage.memoryNetwork(
              //   placeholder: kTransparentImage,
              //   image: post.featuredMedia == 0
              //       ? 'images/placeholder.png'
              //       : post.links.wpFeaturedmedia[0].href,
              // ),
              Center(
                child: new FadeInImage.assetNetwork(
                  placeholder: 'images/placeholder.png',
                  image: post.embedded.wpFeaturedmedia[0].sourceUrl ??
                      'https://picsum.photos/250?image=9',
                ),
              ),

              new Padding(
                  padding: EdgeInsets.all(10.0),
                  child: new ListTile(
                    title: new Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: new Text(post.title.rendered)),
                    subtitle: 
                    new HtmlView(
                      data: post.excerpt.rendered,
                      stylingOptions: null,
                        ),
                    // new Text(post.excerpt.rendered
                    //     .replaceAll(new RegExp(r'<[^>]*>'), '')),
                  )
                  ),
              new ButtonTheme.bar(
                child: new ButtonBar(
                  children: <Widget>[
                    new FlatButton(
                      child: const Text('READ MORE'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                            // builder: (context) => new VirtuoozaPost(post: posts[index]),
                            builder: (context) => new SinglePost(post: post),
                            //            Text(
                            //     post.content.rendered.replaceAll(new RegExp(r'<[^>]*>'), '')
                            // ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
