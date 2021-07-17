part of models;

abstract class OpenWeather implements Built<OpenWeather, OpenWeatherBuilder> {
  factory OpenWeather([void Function(OpenWeatherBuilder b) updates]) = _$OpenWeather;

  factory OpenWeather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  OpenWeather._();

  Current get current;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<OpenWeather> get serializer => _$openWeatherSerializer;
}
