import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flwpstart/models/post.dart';
import 'package:transparent_image/transparent_image.dart';

class PostCard extends StatefulWidget {

  final Post post;

  
  PostCard( this.post );

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
                    new FadeInImage.memoryNetwork(
                      placeholder: kTransparentImage,
                      image: post.featuredMedia == 0
                          ? 'images/placeholder.png'
                          : post.links.wpFeaturedmedia[0].href,
                    ),
                    new Padding(
                      padding: EdgeInsets.all(10.0),
                      child: new ListTile(
                        title: new Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: new Text(post.title.rendered)),
                        subtitle: new Text(
                            post.excerpt.rendered.replaceAll(new RegExp(r'<[^>]*>'), '')
                        ),
                      )
                    ),
                      new ButtonTheme.bar(
                        child: new ButtonBar(
                            children: <Widget>[
                              new FlatButton(
                              child: const Text('READ MORE'),
                              onPressed: () { Navigator.push(
                                  context, new MaterialPageRoute(
                                  // builder: (context) => new VirtuoozaPost(post: posts[index]),
                                   builder: (context) => new Text(
                            post.content.rendered.replaceAll(new RegExp(r'<[^>]*>'), '')
                        ),
                                  ),
                                ); },
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

 


