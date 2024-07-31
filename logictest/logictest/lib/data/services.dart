import 'common.dart';
import 'business.dart';

class Services {
  List<Common>? common;
  List<Business>? business;
  bool isShowC = false;
  bool isShowB = false;
  Services({
    this.common,
    this.business,
  });

  Services.fromJson(dynamic json) {
    if (json['common'] != null) {
      common = [];
      json['common'].forEach((v) {
        common!.add(Common.fromJson(v));
      });
    }
    if (json['business'] != null) {
      business = [];
      json['business'].forEach((v) {
        business!.add(Business.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (common != null) {
      map['common'] = common!.map((v) => v.toJson()).toList();
    }
    if (business != null) {
      map['business'] = business!.map((v) => v.toJson()).toList();
    }
    return map;
  }

}