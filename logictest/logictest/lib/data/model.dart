import 'vpcs.dart';

class Model {
  String? account;
  List<Vpcs>? vpcs;
  Model({
    this.account,
    this.vpcs,
  });

  Model.fromJson(dynamic json) {
    account = json['account'];
    if (json['vpcs'] != null) {
      vpcs = [];
      json['vpcs'].forEach((v) {
        vpcs!.add(Vpcs.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['account'] = account;
    if (vpcs != null) {
      map['vpcs'] = vpcs!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}