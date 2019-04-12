class Post {
  final String title;
  // final String thumbnailUrl;

  // Post._({this.title, this.thumbnailUrl});
  Post._({this.title});

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post._(
      title: json['title'],
      // thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
