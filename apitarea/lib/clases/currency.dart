import 'dart:convert';

import 'package:apitarea/clases/cop.dart';

class Currencies {
  Cop cop;

  Currencies({
    required this.cop,
  });

  factory Currencies.fromRawJson(String str) =>
      Currencies.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        cop: Cop.fromJson(json["COP"]),
      );

  Map<String, dynamic> toJson() => {
        "COP": cop.toJson(),
      };
}
