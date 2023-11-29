// To parse this JSON data, do
//
//     final myproduct = myproductFromJson(jsonString);

import 'dart:convert';

List<Myproduct> myproductFromJson(String str) => List<Myproduct>.from(json.decode(str).map((x) => Myproduct.fromJson(x)));

String myproductToJson(List<Myproduct> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Myproduct {
    int ?userId;
    int ?id;
    String ?title;
    String ?body;

    Myproduct({
       required this.userId,
       required this.id,
       required this.title,
       required this.body,
    });

    factory Myproduct.fromJson(Map<String, dynamic> json) => Myproduct(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
    };
}
