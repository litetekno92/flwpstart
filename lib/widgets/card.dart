import 'package:flutter/material.dart';
import 'package:flwpstart/models/wppost2.dart';

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
    // TODO: implement build
    return 
    // Scaffold(
    //   body:
            Card(
              child: ListTile(
                  contentPadding: EdgeInsets.all(10.0),
                  title: new Text(post.title),
                  // trailing: new Image.network(
                  //   post.thumbnailUrl,
                  //   fit: BoxFit.cover,
                  //   height: 40.0,
                  //   width: 40.0,
                  // )
                  ),
           
    );
   
  }

 

}
