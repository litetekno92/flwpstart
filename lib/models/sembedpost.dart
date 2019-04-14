// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) {
    final jsonData = json.decode(str);
    return new List<Post>.from(jsonData.map((x) => Post.fromJson(x)));
}

String postToJson(List<Post> data) {
    final dyn = new List<dynamic>.from(data.map((x) => x.toJson()));
    return json.encode(dyn);
}

class Post {
    int id;
    DateTime date;
    DateTime dateGmt;
    Guid guid;
    DateTime modified;
    DateTime modifiedGmt;
    String slug;
    String status;
    String type;
    String link;
    Guid title;
    Content content;
    Content excerpt;
    int author;
    int featuredMedia;
    String commentStatus;
    String pingStatus;
    bool sticky;
    String template;
    String format;
    Meta meta;
    List<int> categories;
    List<dynamic> tags;
    Embedded embedded;

    Post({
        this.id,
        this.date,
        this.dateGmt,
        this.guid,
        this.modified,
        this.modifiedGmt,
        this.slug,
        this.status,
        this.type,
        this.link,
        this.title,
        this.content,
        this.excerpt,
        this.author,
        this.featuredMedia,
        this.commentStatus,
        this.pingStatus,
        this.sticky,
        this.template,
        this.format,
        this.meta,
        this.categories,
        this.tags,
        this.embedded,
    });

    factory Post.fromJson(Map<String, dynamic> json) => new Post(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        dateGmt: DateTime.parse(json["date_gmt"]),
        guid: Guid.fromJson(json["guid"]),
        modified: DateTime.parse(json["modified"]),
        modifiedGmt: DateTime.parse(json["modified_gmt"]),
        slug: json["slug"],
        status: json["status"],
        type: json["type"],
        link: json["link"],
        title: Guid.fromJson(json["title"]),
        content: Content.fromJson(json["content"]),
        excerpt: Content.fromJson(json["excerpt"]),
        author: json["author"],
        featuredMedia: json["featured_media"],
        commentStatus: json["comment_status"],
        pingStatus: json["ping_status"],
        sticky: json["sticky"],
        template: json["template"],
        format: json["format"],
        meta: Meta.fromJson(json["meta"]),
        categories: new List<int>.from(json["categories"].map((x) => x)),
        tags: new List<dynamic>.from(json["tags"].map((x) => x)),
        embedded: Embedded.fromJson(json["_embedded"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "date_gmt": dateGmt.toIso8601String(),
        "guid": guid.toJson(),
        "modified": modified.toIso8601String(),
        "modified_gmt": modifiedGmt.toIso8601String(),
        "slug": slug,
        "status": status,
        "type": type,
        "link": link,
        "title": title.toJson(),
        "content": content.toJson(),
        "excerpt": excerpt.toJson(),
        "author": author,
        "featured_media": featuredMedia,
        "comment_status": commentStatus,
        "ping_status": pingStatus,
        "sticky": sticky,
        "template": template,
        "format": format,
        "meta": meta.toJson(),
        "categories": new List<dynamic>.from(categories.map((x) => x)),
        "tags": new List<dynamic>.from(tags.map((x) => x)),
        "_embedded": embedded.toJson(),
    };
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

class Embedded {
    List<EmbeddedAuthor> author;
    List<WpFeaturedmedia> wpFeaturedmedia;

    Embedded({
        this.author,
        this.wpFeaturedmedia,
    });

    factory Embedded.fromJson(Map<String, dynamic> json) => new Embedded(
        author: new List<EmbeddedAuthor>.from(json["author"].map((x) => EmbeddedAuthor.fromJson(x))),
        wpFeaturedmedia: new List<WpFeaturedmedia>.from(json["wp:featuredmedia"].map((x) => WpFeaturedmedia.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "author": new List<dynamic>.from(author.map((x) => x.toJson())),
        "wp:featuredmedia": new List<dynamic>.from(wpFeaturedmedia.map((x) => x.toJson())),
    };
}

class EmbeddedAuthor {
    int id;
    String name;
    String url;
    String description;
    String link;
    String slug;
    AuthorLinks links;

    EmbeddedAuthor({
        this.id,
        this.name,
        this.url,
        this.description,
        this.link,
        this.slug,
        this.links,
    });

    factory EmbeddedAuthor.fromJson(Map<String, dynamic> json) => new EmbeddedAuthor(
        id: json["id"],
        name: json["name"],
        url: json["url"],
        description: json["description"],
        link: json["link"],
        slug: json["slug"],
        links: AuthorLinks.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
        "description": description,
        "link": link,
        "slug": slug,
        "_links": links.toJson(),
    };
}

class AuthorLinks {
    List<Collection> self;
    List<Collection> collection;

    AuthorLinks({
        this.self,
        this.collection,
    });

    factory AuthorLinks.fromJson(Map<String, dynamic> json) => new AuthorLinks(
        self: new List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
        collection: new List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": new List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": new List<dynamic>.from(collection.map((x) => x.toJson())),
    };
}

class Collection {
    String href;

    Collection({
        this.href,
    });

    factory Collection.fromJson(Map<String, dynamic> json) => new Collection(
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "href": href,
    };
}

class WpFeaturedmedia {
    int id;
    DateTime date;
    String slug;
    String type;
    String link;
    Guid title;
    int author;
    dynamic ampValidity;
    Guid caption;
    String altText;
    String mediaType;
    MimeType mimeType;
    MediaDetails mediaDetails;
    String sourceUrl;
    WpFeaturedmediaLinks links;

    WpFeaturedmedia({
        this.id,
        this.date,
        this.slug,
        this.type,
        this.link,
        this.title,
        this.author,
        this.ampValidity,
        this.caption,
        this.altText,
        this.mediaType,
        this.mimeType,
        this.mediaDetails,
        this.sourceUrl,
        this.links,
    });

    factory WpFeaturedmedia.fromJson(Map<String, dynamic> json) => new WpFeaturedmedia(
        id: json["id"],
        date: DateTime.parse(json["date"]),
        slug: json["slug"],
        type: json["type"],
        link: json["link"],
        title: Guid.fromJson(json["title"]),
        author: json["author"],
        ampValidity: json["amp_validity"],
        caption: Guid.fromJson(json["caption"]),
        altText: json["alt_text"],
        mediaType: json["media_type"],
        mimeType: mimeTypeValues.map[json["mime_type"]],
        mediaDetails: MediaDetails.fromJson(json["media_details"]),
        sourceUrl: json["source_url"],
        links: WpFeaturedmediaLinks.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "date": date.toIso8601String(),
        "slug": slug,
        "type": type,
        "link": link,
        "title": title.toJson(),
        "author": author,
        "amp_validity": ampValidity,
        "caption": caption.toJson(),
        "alt_text": altText,
        "media_type": mediaType,
        "mime_type": mimeTypeValues.reverse[mimeType],
        "media_details": mediaDetails.toJson(),
        "source_url": sourceUrl,
        "_links": links.toJson(),
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

class WpFeaturedmediaLinks {
    List<Collection> self;
    List<Collection> collection;
    List<Collection> about;
    List<ReplyElement> author;
    List<ReplyElement> replies;

    WpFeaturedmediaLinks({
        this.self,
        this.collection,
        this.about,
        this.author,
        this.replies,
    });

    factory WpFeaturedmediaLinks.fromJson(Map<String, dynamic> json) => new WpFeaturedmediaLinks(
        self: new List<Collection>.from(json["self"].map((x) => Collection.fromJson(x))),
        collection: new List<Collection>.from(json["collection"].map((x) => Collection.fromJson(x))),
        about: new List<Collection>.from(json["about"].map((x) => Collection.fromJson(x))),
        author: new List<ReplyElement>.from(json["author"].map((x) => ReplyElement.fromJson(x))),
        replies: new List<ReplyElement>.from(json["replies"].map((x) => ReplyElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "self": new List<dynamic>.from(self.map((x) => x.toJson())),
        "collection": new List<dynamic>.from(collection.map((x) => x.toJson())),
        "about": new List<dynamic>.from(about.map((x) => x.toJson())),
        "author": new List<dynamic>.from(author.map((x) => x.toJson())),
        "replies": new List<dynamic>.from(replies.map((x) => x.toJson())),
    };
}

class ReplyElement {
    bool embeddable;
    String href;

    ReplyElement({
        this.embeddable,
        this.href,
    });

    factory ReplyElement.fromJson(Map<String, dynamic> json) => new ReplyElement(
        embeddable: json["embeddable"],
        href: json["href"],
    );

    Map<String, dynamic> toJson() => {
        "embeddable": embeddable,
        "href": href,
    };
}

class MediaDetails {
    int width;
    int height;
    String file;
    Map<String, Size> sizes;
    ImageMeta imageMeta;

    MediaDetails({
        this.width,
        this.height,
        this.file,
        this.sizes,
        this.imageMeta,
    });

    factory MediaDetails.fromJson(Map<String, dynamic> json) => new MediaDetails(
        width: json["width"],
        height: json["height"],
        file: json["file"],
        sizes: new Map.from(json["sizes"]).map((k, v) => new MapEntry<String, Size>(k, Size.fromJson(v))),
        imageMeta: ImageMeta.fromJson(json["image_meta"]),
    );

    Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
        "file": file,
        "sizes": new Map.from(sizes).map((k, v) => new MapEntry<String, dynamic>(k, v.toJson())),
        "image_meta": imageMeta.toJson(),
    };
}

class ImageMeta {
    String aperture;
    String credit;
    String camera;
    String caption;
    String createdTimestamp;
    String copyright;
    String focalLength;
    String iso;
    String shutterSpeed;
    String title;
    String orientation;
    List<dynamic> keywords;

    ImageMeta({
        this.aperture,
        this.credit,
        this.camera,
        this.caption,
        this.createdTimestamp,
        this.copyright,
        this.focalLength,
        this.iso,
        this.shutterSpeed,
        this.title,
        this.orientation,
        this.keywords,
    });

    factory ImageMeta.fromJson(Map<String, dynamic> json) => new ImageMeta(
        aperture: json["aperture"],
        credit: json["credit"],
        camera: json["camera"],
        caption: json["caption"],
        createdTimestamp: json["created_timestamp"],
        copyright: json["copyright"],
        focalLength: json["focal_length"],
        iso: json["iso"],
        shutterSpeed: json["shutter_speed"],
        title: json["title"],
        orientation: json["orientation"],
        keywords: new List<dynamic>.from(json["keywords"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "aperture": aperture,
        "credit": credit,
        "camera": camera,
        "caption": caption,
        "created_timestamp": createdTimestamp,
        "copyright": copyright,
        "focal_length": focalLength,
        "iso": iso,
        "shutter_speed": shutterSpeed,
        "title": title,
        "orientation": orientation,
        "keywords": new List<dynamic>.from(keywords.map((x) => x)),
    };
}

class Size {
    String file;
    int width;
    int height;
    MimeType mimeType;
    String sourceUrl;

    Size({
        this.file,
        this.width,
        this.height,
        this.mimeType,
        this.sourceUrl,
    });

    factory Size.fromJson(Map<String, dynamic> json) => new Size(
        file: json["file"],
        width: json["width"],
        height: json["height"],
        mimeType: mimeTypeValues.map[json["mime_type"]],
        sourceUrl: json["source_url"],
    );

    Map<String, dynamic> toJson() => {
        "file": file,
        "width": width,
        "height": height,
        "mime_type": mimeTypeValues.reverse[mimeType],
        "source_url": sourceUrl,
    };
}

enum MimeType { IMAGE_JPEG }

final mimeTypeValues = new EnumValues({
    "image/jpeg": MimeType.IMAGE_JPEG
});

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

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
