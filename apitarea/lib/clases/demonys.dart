import 'dart:convert';

import 'package:apitarea/clases/eng.dart';

class Demonyms {
  Eng eng;
  Eng fra;

  Demonyms({
    required this.eng,
    required this.fra,
  });

  factory Demonyms.fromRawJson(String str) =>
      Demonyms.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: Eng.fromJson(json["fra"]),
      );

  Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra.toJson(),
      };
}