// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) {
    final jsonData = json.decode(str);
    return User.fromJson(jsonData);
}

String userToJson(User data) {
    final dyn = data.toJson();
    return json.encode(dyn);
}

class User {
    int id;
    String name;
    String url;
    String description;
    String link;
    String slug;
    List<dynamic> meta;
    Links links;

    User({
        this.id,
        this.name,
        this.url,
        this.description,
        this.link,
        this.slug,
        this.meta,
        this.links,
    });

    factory User.fromJson(Map<String, dynamic> json) => new User(
        id: json["id"],
        name: json["name"],
        url: json["url"],
        description: json["description"],
        link: json["link"],
        slug: json["slug"],
        meta: new List<dynamic>.from(json["meta"].map((x) => x)),
        links: Links.fromJson(json["_links"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "url": url,
        "description": description,
        "link": link,
        "slug": slug,
        "meta": new List<dynamic>.from(meta.map((x) => x)),
        "_links": links.toJson(),
    };
}

class Links {
    List<Collection> self;
    List<Collection> collection;

    Links({
        this.self,
        this.collection,
    });

    factory Links.fromJson(Map<String, dynamic> json) => new Links(
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
