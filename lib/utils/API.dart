import 'dart:async';
import 'package:http/http.dart' as http;

const baseUrl = "https://www.lemedia.sn";

class API {
  static Future fetchData() {
    var url = baseUrl + "/wp-json/wp/v2";
    return http.get(url);
  }
}
