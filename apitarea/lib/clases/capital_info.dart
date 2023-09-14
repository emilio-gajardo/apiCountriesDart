import 'dart:convert';

class CapitalInfo {
  List<double> latlng;

  CapitalInfo({
    required this.latlng,
  });

  factory CapitalInfo.fromRawJson(String str) =>
      CapitalInfo.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
      };
}
