import 'package:weather_app/src/models/open_weather.dart';

class GetWeather {
  const GetWeather();

  @override
  String toString() {
    return 'GetWeather{}';
  }
}

class GetWeatherSuccessful {
  const GetWeatherSuccessful(this.weather);

  final OpenWeather weather;

  @override
  String toString() {
    return 'GetWeatherSuccessful{$weather}';
  }
}

class GetWeatherError {
  GetWeatherError(this.error);

  final dynamic error;

  @override
  String toString() {
    return 'GetWeatherError{error: $error}';
  }
}
