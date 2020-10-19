// repreasent item we'll getch (story/ comment etc)
class ItemModel {
  final int id;
  final bool delete;
  final String type;
  final String by;
  final int time;
  final String text;
  final bool dead;
  final int parent;
  final List<dynamic> kids;
  final String url;
  final int score;
  final String title;
  final int descendants;

  ItemModel.fromJson(Map<String, dynamic> parsedJson)
      : id = parsedJson['id'],
        delete = parsedJson['delete'],
        type = parsedJson["type"],
        by = parsedJson["by"],
        time = parsedJson["time"],
        text = parsedJson["text"],
        dead = parsedJson["dead"],
        parent = parsedJson["parent"],
        kids = parsedJson["kids"],
        url = parsedJson["url"],
        score = parsedJson["score"],
        title = parsedJson["title"],
        descendants = parsedJson["descendants"];
}
