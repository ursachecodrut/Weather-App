import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/models/open_weather.dart';

part 'get_weather.freezed.dart';

@freezed
class GetWeather with _$GetWeather implements AppAction {
  const factory GetWeather() = GetWeatherStart;

  const factory GetWeather.successful(OpenWeather weather) = GetWeatherSuccessful;

  @Implements(ErrorAction)
  const factory GetWeather.error(Object error, StackTrace stackTrace) = GetWeatherError;
}

// class GetWeather {
//   const GetWeather();
//
//   @override
//   String toString() {
//     return 'GetWeather{}';
//   }
// }
//
// class GetWeatherSuccessful {
//   const GetWeatherSuccessful(this.weather);
//
//   final OpenWeather weather;
//
//   @override
//   String toString() {
//     return 'GetWeatherSuccessful{$weather}';
//   }
// }
//
// class GetWeatherError {
//   GetWeatherError(this.error);
//
//   final dynamic error;
//
//   @override
//   String toString() {
//     return 'GetWeatherError{error: $error}';
//   }
// }
