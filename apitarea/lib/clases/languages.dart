import 'dart:convert';

class Languages {
  String spa;

  Languages({
    required this.spa,
  });

  factory Languages.fromRawJson(String str) =>
      Languages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        spa: json["spa"],
      );

  Map<String, dynamic> toJson() => {
        "spa": spa,
      };
}
