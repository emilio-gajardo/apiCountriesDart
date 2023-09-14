import 'dart:convert';

class Cop {
  String name;
  String symbol;

  Cop({
    required this.name,
    required this.symbol,
  });

  factory Cop.fromRawJson(String str) => Cop.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cop.fromJson(Map<String, dynamic> json) => Cop(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}
