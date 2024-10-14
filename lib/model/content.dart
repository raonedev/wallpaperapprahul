/// result_count : 1202752
/// images : [{"id":"1143549147","display_sizes":[{"is_watermarked":false,"name":"comp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=612x612&w=0&k=20&c=TMXGBL33aq9nLUyqkzgdaaC9HzZhpwFYBDzHljHQoLY="},{"is_watermarked":false,"name":"comp_webp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.webp?b=1&s=612x612&w=0&k=20&c=TMXGBL33aq9nLUyqkzgdaaC9HzZhpwFYBDzHljHQoLY="},{"is_watermarked":false,"name":"preview","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=170667a&w=0&k=20&c=ynzKRgM25bhchwWEyC0ZDTzOEZcZt8iQIueSQxaflE8="},{"is_watermarked":false,"name":"thumb","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=170x170&k=20&c=fqfa7k7VJnn6EPQjr998SMyyM2gMUVRqJDhL-Vg2DFM="},{"is_watermarked":false,"name":"mid_res_comp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=1024x1024&w=0&k=20&c=uV0kkBitm43Yi2L8zAvWWD-T8Nyj6smGvQ3JyShweDE="},{"is_watermarked":false,"name":"mid_res_comp_webp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.webp?b=1&s=1024x1024&w=0&k=20&c=uV0kkBitm43Yi2L8zAvWWD-T8Nyj6smGvQ3JyShweDE="},{"is_watermarked":false,"name":"high_res_comp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=2048x2048&w=0&k=20&c=Q47z-DNeMQg_hC55ICAwQ7wCwTBCTl-9dK0QY602j1c="},{"is_watermarked":false,"name":"high_res_comp_webp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.webp?b=1&s=2048x2048&w=0&k=20&c=Q47z-DNeMQg_hC55ICAwQ7wCwTBCTl-9dK0QY602j1c="}],"referral_destinations":[{"site_name":"gettyimages","uri":"https://www.gettyimages.com/detail/photo/gray-short-hair-cat-grooming-royalty-free-image/1143549147"},{"site_name":"istockphoto","uri":"https://www.istockphoto.com/photo/gray-short-hair-cat-grooming-gm1143549147-307142449"}],"title":"Gray short hair cat grooming"}]

class Content {
  Content({
    num? resultCount,
    List<Images>? images,
  }) {
    _resultCount = resultCount;
    _images = images;
  }

  Content.fromJson(dynamic json) {
    _resultCount = json['result_count'];
    if (json['images'] != null) {
      _images = [];
      json['images'].forEach((v) {
        _images?.add(Images.fromJson(v));
      });
    }
  }
  num? _resultCount;
  List<Images>? _images;
  Content copyWith({
    num? resultCount,
    List<Images>? images,
  }) =>
      Content(
        resultCount: resultCount ?? _resultCount,
        images: images ?? _images,
      );
  num? get resultCount => _resultCount;
  List<Images>? get images => _images;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result_count'] = _resultCount;
    if (_images != null) {
      map['images'] = _images?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// id : "1143549147"
/// display_sizes : [{"is_watermarked":false,"name":"comp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=612x612&w=0&k=20&c=TMXGBL33aq9nLUyqkzgdaaC9HzZhpwFYBDzHljHQoLY="},{"is_watermarked":false,"name":"comp_webp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.webp?b=1&s=612x612&w=0&k=20&c=TMXGBL33aq9nLUyqkzgdaaC9HzZhpwFYBDzHljHQoLY="},{"is_watermarked":false,"name":"preview","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=170667a&w=0&k=20&c=ynzKRgM25bhchwWEyC0ZDTzOEZcZt8iQIueSQxaflE8="},{"is_watermarked":false,"name":"thumb","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=170x170&k=20&c=fqfa7k7VJnn6EPQjr998SMyyM2gMUVRqJDhL-Vg2DFM="},{"is_watermarked":false,"name":"mid_res_comp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=1024x1024&w=0&k=20&c=uV0kkBitm43Yi2L8zAvWWD-T8Nyj6smGvQ3JyShweDE="},{"is_watermarked":false,"name":"mid_res_comp_webp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.webp?b=1&s=1024x1024&w=0&k=20&c=uV0kkBitm43Yi2L8zAvWWD-T8Nyj6smGvQ3JyShweDE="},{"is_watermarked":false,"name":"high_res_comp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=2048x2048&w=0&k=20&c=Q47z-DNeMQg_hC55ICAwQ7wCwTBCTl-9dK0QY602j1c="},{"is_watermarked":false,"name":"high_res_comp_webp","uri":"https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.webp?b=1&s=2048x2048&w=0&k=20&c=Q47z-DNeMQg_hC55ICAwQ7wCwTBCTl-9dK0QY602j1c="}]
/// referral_destinations : [{"site_name":"gettyimages","uri":"https://www.gettyimages.com/detail/photo/gray-short-hair-cat-grooming-royalty-free-image/1143549147"},{"site_name":"istockphoto","uri":"https://www.istockphoto.com/photo/gray-short-hair-cat-grooming-gm1143549147-307142449"}]
/// title : "Gray short hair cat grooming"

class Images {
  Images({
    String? id,
    List<DisplaySizes>? displaySizes,
    List<ReferralDestinations>? referralDestinations,
    String? title,
  }) {
    _id = id;
    _displaySizes = displaySizes;
    _referralDestinations = referralDestinations;
    _title = title;
  }

  Images.fromJson(dynamic json) {
    _id = json['id'];
    if (json['display_sizes'] != null) {
      _displaySizes = [];
      json['display_sizes'].forEach((v) {
        _displaySizes?.add(DisplaySizes.fromJson(v));
      });
    }
    if (json['referral_destinations'] != null) {
      _referralDestinations = [];
      json['referral_destinations'].forEach((v) {
        _referralDestinations?.add(ReferralDestinations.fromJson(v));
      });
    }
    _title = json['title'];
  }
  String? _id;
  List<DisplaySizes>? _displaySizes;
  List<ReferralDestinations>? _referralDestinations;
  String? _title;
  Images copyWith({
    String? id,
    List<DisplaySizes>? displaySizes,
    List<ReferralDestinations>? referralDestinations,
    String? title,
  }) =>
      Images(
        id: id ?? _id,
        displaySizes: displaySizes ?? _displaySizes,
        referralDestinations: referralDestinations ?? _referralDestinations,
        title: title ?? _title,
      );
  String? get id => _id;
  List<DisplaySizes>? get displaySizes => _displaySizes;
  List<ReferralDestinations>? get referralDestinations => _referralDestinations;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_displaySizes != null) {
      map['display_sizes'] = _displaySizes?.map((v) => v.toJson()).toList();
    }
    if (_referralDestinations != null) {
      map['referral_destinations'] =
          _referralDestinations?.map((v) => v.toJson()).toList();
    }
    map['title'] = _title;
    return map;
  }
}

/// site_name : "gettyimages"
/// uri : "https://www.gettyimages.com/detail/photo/gray-short-hair-cat-grooming-royalty-free-image/1143549147"

class ReferralDestinations {
  ReferralDestinations({
    String? siteName,
    String? uri,
  }) {
    _siteName = siteName;
    _uri = uri;
  }

  ReferralDestinations.fromJson(dynamic json) {
    _siteName = json['site_name'];
    _uri = json['uri'];
  }
  String? _siteName;
  String? _uri;
  ReferralDestinations copyWith({
    String? siteName,
    String? uri,
  }) =>
      ReferralDestinations(
        siteName: siteName ?? _siteName,
        uri: uri ?? _uri,
      );
  String? get siteName => _siteName;
  String? get uri => _uri;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['site_name'] = _siteName;
    map['uri'] = _uri;
    return map;
  }
}

/// is_watermarked : false
/// name : "comp"
/// uri : "https://media.istockphoto.com/id/1143549147/photo/gray-short-hair-cat-grooming.jpg?b=1&s=612x612&w=0&k=20&c=TMXGBL33aq9nLUyqkzgdaaC9HzZhpwFYBDzHljHQoLY="

class DisplaySizes {
  DisplaySizes({
    bool? isWatermarked,
    String? name,
    String? uri,
  }) {
    _isWatermarked = isWatermarked;
    _name = name;
    _uri = uri;
  }

  DisplaySizes.fromJson(dynamic json) {
    _isWatermarked = json['is_watermarked'];
    _name = json['name'];
    _uri = json['uri'];
  }
  bool? _isWatermarked;
  String? _name;
  String? _uri;
  DisplaySizes copyWith({
    bool? isWatermarked,
    String? name,
    String? uri,
  }) =>
      DisplaySizes(
        isWatermarked: isWatermarked ?? _isWatermarked,
        name: name ?? _name,
        uri: uri ?? _uri,
      );
  bool? get isWatermarked => _isWatermarked;
  String? get name => _name;
  String? get uri => _uri;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['is_watermarked'] = _isWatermarked;
    map['name'] = _name;
    map['uri'] = _uri;
    return map;
  }
}