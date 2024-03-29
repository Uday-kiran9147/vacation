// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
// To parse this JSON data, do
//

List<Albums> albumsFromJson(String str) {
  return List<Albums>.from(json.decode(str).map((x) => Albums.fromJson(x)));
}

// String albumsToJson(List<Albums> data) {
//   return json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
// }

class Albums {
  Albums({
    required this.userId,
    required this.id,
    required this.title,
  });

  int userId;
  int id;
  String title;

  factory Albums.fromJson(Map<String, dynamic> json) => Albums(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
      };
}
