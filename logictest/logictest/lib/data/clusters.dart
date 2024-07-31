import 'products.dart';

class Clusters {
  String? name;
  List<Products>? products;
  bool isShow = false;
  Clusters({
    this.name,
    this.products,
  });

  Clusters.fromJson(dynamic json) {
    name = json['name'];
    if (json['products'] != null) {
      products = [];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    if (products != null) {
      map['products'] = products!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}