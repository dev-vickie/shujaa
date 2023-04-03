import 'dart:convert';

class County {
  final String name;
  final String code;
  final String flagUrl;
  County({
    required this.name,
    required this.code,
    required this.flagUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'code': code,
      'flagUrl': flagUrl,
    };
  }

  factory County.fromMap(Map<String, dynamic> map) {
    return County(
      name: map['name'] as String,
      code: map['code'] as String,
      flagUrl: map['flagUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory County.fromJson(String source) => County.fromMap(json.decode(source) as Map<String, dynamic>);
}
