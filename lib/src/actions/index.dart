library actions;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/src/models/index.dart';

part 'get_location.dart';

part 'get_weather.dart';

part 'index.freezed.dart';

abstract class AppAction {}

abstract class ErrorAction implements AppAction {
  Object get error;

  StackTrace get stackTrace;
}
