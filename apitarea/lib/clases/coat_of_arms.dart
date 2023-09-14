import 'dart:convert';

class CoatOfArms {
  String png;
  String svg;

  CoatOfArms({
    required this.png,
    required this.svg,
  });

  factory CoatOfArms.fromRawJson(String str) =>
      CoatOfArms.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
      };
}