import 'dart:convert';

import 'package:http/http.dart';
import 'package:weather_app/src/models/index.dart';

class WeatherApi {
  WeatherApi({required String apiUrl, required Client client})
      : _apiUrl = apiUrl,
        _client = client;

  final String _apiUrl;
  final Client _client;

  Future<OpenWeather> getWeather(Location location) async {
    final Uri url = Uri.parse(
        '$_apiUrl?lat=${location.lat}&lon=${location.lon}&exclude=minutely&appid=01c9b6a7efc52483cd7bf1c892b3309f');
    final Response response = await _client.get(url);

    if (response.statusCode >= 300) {
      throw StateError(response.body);
    }
    // log(response.body);
    return OpenWeather.fromJson(jsonDecode(response.body));
  }
}
