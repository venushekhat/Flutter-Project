import 'environments.dart';

class Products {
  String? name;
  List<Environments>? environments;
  bool isShow = false;

  Products({
    this.name,
    this.environments,});

  Products.fromJson(dynamic json) {
    name = json['name'];
    if (json['environments'] != null) {
      environments = [];
      json['environments'].forEach((v) {
        environments!.add(Environments.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    if (environments != null) {
      map['environments'] = environments!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}