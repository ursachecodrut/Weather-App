part of models;

abstract class Weather implements Built<Weather, WeatherBuilder> {
  factory Weather([void Function(WeatherBuilder b) updates]) = _$Weather;

  factory Weather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  Weather._();

  int get id;

  String get main;

  String get description;

  String get icon;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<Weather> get serializer => _$weatherSerializer;
}
