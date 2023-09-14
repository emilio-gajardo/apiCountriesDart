import 'dart:convert';

import 'package:apitarea/clases/translation.dart';

class NativeName {
  Translation spa;

  NativeName({
    required this.spa,
  });

  factory NativeName.fromRawJson(String str) =>
      NativeName.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        spa: Translation.fromJson(json["spa"]),
      );

  Map<String, dynamic> toJson() => {
        "spa": spa.toJson(),
      };
}