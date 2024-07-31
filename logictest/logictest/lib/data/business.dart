class Business {
  String? name;
  Business({
    this.name,
  });

  Business.fromJson(dynamic json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

}