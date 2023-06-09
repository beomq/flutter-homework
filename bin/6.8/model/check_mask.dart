class CheckMask {
  CheckMask({
    required this.count,
    required this.stores,
  });
  late final int count;
  late final List<Stores> stores;

  CheckMask.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    stores = List.from(json['stores']).map((e) => Stores.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['count'] = count;
    _data['stores'] = stores.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Stores {
  Stores({
    required this.addr,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });
  late final String addr;
  late final String code;
  late final String createdAt;
  late final double lat;
  late final double lng;
  late final String name;
  late final String remainStat;
  late final String stockAt;
  late final String type;

  Stores.fromJson(Map<String, dynamic> json) {
    addr = json['addr'];
    code = json['code'];
    createdAt = json['created_at'];
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    remainStat = json['remain_stat'];
    stockAt = json['stock_at'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['addr'] = addr;
    _data['code'] = code;
    _data['created_at'] = createdAt;
    _data['lat'] = lat;
    _data['lng'] = lng;
    _data['name'] = name;
    _data['remain_stat'] = remainStat;
    _data['stock_at'] = stockAt;
    _data['type'] = type;
    return _data;
  }
}
