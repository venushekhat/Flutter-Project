import 'clusters.dart';

class Vpcs {
  String? name;
  List<Clusters>? clusters;
  bool isShow = false;
  Vpcs({
    this.name,
    this.clusters,
  });

  Vpcs.fromJson(dynamic json) {
    name = json['name'];
    if (json['clusters'] != null) {
      clusters = [];
      json['clusters'].forEach((v) {
        clusters!.add(Clusters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    if (clusters != null) {
      map['clusters'] = clusters!.map((v) => v.toJson()).toList();
    }
    return map;
  }
}