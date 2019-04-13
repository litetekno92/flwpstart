class Post {
  // final String title;
  // final String thumbnailUrl;
  Guid title;
  Content content;
  Content excerpt;
  int author;
  int featuredMedia;
  Links links;

  // Post._({this.title, this.thumbnailUrl});
  Post._({
    this.title,
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.links,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return new Post._(
      // title: json['title']['rendered']
      title: Guid.fromJson(json["title"]),
      content: Content.fromJson(json["content"]),
      excerpt: Content.fromJson(json["excerpt"]),
      author: json["author"],
      featuredMedia: json["featured_media"],
      links: Links.fromJson(json["_links"]),
    );
    // thumbnailUrl: json['thumbnailUrl'],
  }
}

class Content {
  String rendered;
  bool protected;

  Content({
    this.rendered,
    this.protected,
  });

  factory Content.fromJson(Map<String, dynamic> json) => new Content(
        rendered: json["rendered"],
        protected: json["protected"],
      );

  Map<String, dynamic> toJson() => {
        "rendered": rendered,
        "protected": protected,
      };
}

class Guid {
  String rendered;

  Guid({
    this.rendered,
  });

  factory Guid.fromJson(Map<String, dynamic> json) => new Guid(
        rendered: json["rendered"],
      );

  Map<String, dynamic> toJson() => {
        "rendered": rendered,
      };
}

class Links {
    List<About> self;
    List<About> collection;
    List<About> about;
    List<Author> author;
    List<Author> replies;
    List<VersionHistory> versionHistory;
    List<Author> wpFeaturedmedia;
    List<About> wpAttachment;
    List<WpTerm> wpTerm;
    List<Cury> curies;

    Links({
        this.self,
        this.collection,
        this.about,
        this.author,
        this.replies,
        this.versionHistory,
        this.wpFeaturedmedia,
        this.wpAttachment,
        this.wpTerm,
        this.curies,
    });

    factory Links.fromJson(Map<String, dynamic> json) => new Links(
        self: new List<About>.from(json["self"].map((x) => About.fromJson(x))),
        collection: new List<About>.from(json["collection"].map((x) => About.fromJson(x))),
        about: new List<About>.from(json["about"].map((x) => About.fromJson(x))),
        author: new List<Author>.from(json["author"].map((x) => Author.fromJson(x))),
        replies: new List<Author>.from(json["replies"].map((x) => Author.fromJson(x))),
        versionHistory: new List<VersionHistory>.from(json["version-history"].map((x) => VersionHistory.fromJson(x))),
        wpFeaturedmedia: new List<Author>.from(json["wp:featuredmedia"].map((x) => Author.fromJson(x))),
        wpAttachment: new List<About>.from(json["wp:attachment"].map((x) => About.fromJson(x))),
        wpTerm: new List<WpTerm>.from(json["wp:term"].map((x) => WpTerm.fromJson(x))),
        curies: new List<Cury>.from(json["curies"].map((x) => Cury.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": new List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": new List<dynamic>.from(collection.map((x) => x.toJson())),
        "about": new List<dynamic>.from(about.map((x) => x.toJson())),
        "author": new List<dynamic>.from(author.map((x) => x.toJson())),
        "replies": new List<dynamic>.from(replies.map((x) => x.toJson())),
        "version-history": new List<dynamic>.from(versionHistory.map((x) => x.toJson())),
        "wp:featuredmedia": new List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
        "wp:attachment": new List<dynamic>.from(wpAttachment.map((x) => x.toJson())),
        "wp:term": new List<dynamic>.from(wpTerm.map((x) => x.toJson())),
        "curies": new List<dynamic>.from(curies.map((x) => x.toJson())),
 };
}

class About {
    String href;

    About({
        this.href,
    });

    factory About.fromJson(Map<String, dynamic> json) => new About(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class Author {
    bool embeddable;
    String href;

    Author({
        this.embeddable,
        this.href,
    });

    factory Author.fromJson(Map<String, dynamic> json) => new Author(
        embeddable: json["embeddable"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "embeddable": embeddable,
        "href": href,
    };
}

class Cury {
    String name;
    String href;
    bool templated;


    Cury({
        this.name,
        this.href,
        this.templated,
    });

    factory Cury.fromJson(Map<String, dynamic> json) => new Cury(
        name: json["name"],
        href: json["href"],
        templated: json["templated"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "href": href,
        "templated": templated,
    };
}

class VersionHistory {
    int count;
    String href;

    VersionHistory({
        this.count,
        this.href,
    });

    factory VersionHistory.fromJson(Map<String, dynamic> json) => new VersionHistory(
        count: json["count"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "href": href,
    };
}
class WpTerm {
    String taxonomy;
    bool embeddable;
    String href;

    WpTerm({
        this.taxonomy,
        this.embeddable,
        this.href,
    });

    factory WpTerm.fromJson(Map<String, dynamic> json) => new WpTerm(
        taxonomy: json["taxonomy"],
        embeddable: json["embeddable"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "taxonomy": taxonomy,
        "embeddable": embeddable,
        "href": href,
    };
}

class Meta {
    String ampStatus;

    Meta({
        this.ampStatus,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => new Meta(
        ampStatus: json["amp_status"],
    );

    Map<String, dynamic> toJson() => {
        "amp_status": ampStatus,
    };
}

