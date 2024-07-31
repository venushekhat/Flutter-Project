class Common {
  String? name;
  Common({
    this.name,
  });

  Common.fromJson(dynamic json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }
}