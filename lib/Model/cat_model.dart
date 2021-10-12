// To parse this JSON data, do
//
//     final cat = catFromJson(jsonString);

import 'dart:convert';

List<Cat> catFromJson(String str) => List<Cat>.from(json.decode(str).map((x) => Cat.fromJson(x)));

String catToJson(List<Cat> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cat {
    Cat({
        this.description,
        this.imageUrl,
        this.statusCode,
    });

    String? description;
    String? imageUrl;
    int? statusCode;

    factory Cat.fromJson(Map<String, dynamic> json) => Cat(
        description: json["description"],
        imageUrl: json["imageUrl"],
        statusCode: json["statusCode"],
    );

    Map<String, dynamic> toJson() => {
        "description": description,
        "imageUrl": imageUrl,
        "statusCode": statusCode,
    };
}
