import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/open_weather.dart';
import 'package:weather_app/src/models/weather.dart';
import 'package:built_collection/built_collection.dart';

import 'current.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[AppState, Location, OpenWeather, Current, Weather])
Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
