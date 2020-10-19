import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

class NewsApiProvider {
  Client client = Client();
  final _root = "https://hacker-news.firebaseio.com/v0";

  fetchTopId() async {
    final response = await client.get("$_root/topstories.json?print=pretty");
    final ids = json.decode(response.body);
    return ids;
  }

  fetchItem(int id) async {
    final response = await client.get("$_root/item/$id.j son");
    final parsedJson = json.decode(response.body);
    return ItemModel.fromJson(parsedJson);
  }
}
