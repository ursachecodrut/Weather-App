import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/actions/get_location.dart';
import 'package:weather_app/src/actions/get_weather.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/app_state.dart';
import 'package:weather_app/src/models/location.dart';
import 'package:weather_app/src/models/open_weather.dart';
import 'package:rxdart/rxdart.dart';

class AppEpic {
  AppEpic({required LocationApi locationApi, required WeatherApi weatherApi})
      : _locationApi = locationApi,
        _weatherApi = weatherApi;

  final LocationApi _locationApi;
  final WeatherApi _weatherApi;

  Epic<AppState> get epic {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetLocation>(_getLocation),
      TypedEpic<AppState, GetWeather>(_getWeather),
    ]);
  }

  Stream<Object> _getLocation(Stream<GetLocation> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetLocation event) => _locationApi.getLocation())
        .expand((Location location) {
      return <Object>[
        GetLocationSuccessful(location),
        const GetWeather(),
      ];
    }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocationError(error));
  }

  Stream<Object> _getWeather(Stream<GetWeather> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetWeather event) => _weatherApi.getWeather(store.state.location!))
        .map<Object>((OpenWeather weather) => GetWeatherSuccessful(weather))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeatherError(error));
  }
}
