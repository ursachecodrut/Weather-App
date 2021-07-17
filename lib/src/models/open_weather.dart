library weather;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_app/src/models/current.dart';
import 'package:weather_app/src/models/serializers.dart';

part 'open_weather.g.dart';

abstract class OpenWeather implements Built<OpenWeather, OpenWeatherBuilder> {
  factory OpenWeather([void Function(OpenWeatherBuilder b) updates]) = _$OpenWeather;

  factory OpenWeather.fromJson(dynamic json) => serializers.deserializeWith(serializer, json)!;

  OpenWeather._();

  Current get current;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this)! as Map<String, dynamic>;

  static Serializer<OpenWeather> get serializer => _$openWeatherSerializer;
}
