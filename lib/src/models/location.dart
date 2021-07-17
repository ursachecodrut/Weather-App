part of models;

abstract class Location implements Built<Location, LocationBuilder> {
  factory Location([void Function(LocationBuilder b) updates]) = _$Location;

  factory Location.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Location._();

  String get status;

  String get country;

  String get city;

  double get lat;

  double get lon;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Location> get serializer => _$locationSerializer;
}
