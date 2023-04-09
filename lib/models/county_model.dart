import 'dart:convert';
import "package:hive/hive.dart";

part 'county_model.g.dart';

@HiveType(typeId: 0)
class County {

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String code;

  @HiveField(2)
  final String flagUrl;

  @HiveField(3)
  final String governor;

  County({
    required this.name,
    required this.code,
    required this.flagUrl,
    required this.governor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'code': code,
      'flagUrl': flagUrl,
      'governor': governor,
    };
  }

  factory County.fromMap(Map<String, dynamic> map) {
    return County(
      name: map['name'] as String,
      code: map['code'] as String,
      flagUrl: map['flagUrl'] as String,
      governor: map['governor'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory County.fromJson(String source) =>
      County.fromMap(json.decode(source) as Map<String, dynamic>);
}
