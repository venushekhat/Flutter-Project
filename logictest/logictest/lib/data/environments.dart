import 'services.dart';

class Environments {
  String? name;
  Services? services;
  bool isShow = false;

  Environments({
    this.name,
    this.services,
  });

  Environments.fromJson(dynamic json) {
    name = json['name'];
    services = json['services'] != null ? Services.fromJson(json['services']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    if (services != null) {
      map['services'] = services!.toJson();
    }
    return map;
  }
}