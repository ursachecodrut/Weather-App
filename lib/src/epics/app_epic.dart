import 'package:redux_epics/redux_epics.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:rxdart/rxdart.dart';

class AppEpic {
  AppEpic({required LocationApi locationApi, required WeatherApi weatherApi})
      : _locationApi = locationApi,
        _weatherApi = weatherApi;

  final LocationApi _locationApi;
  final WeatherApi _weatherApi;

  Epic<AppState> get epic {
    return combineEpics<AppState>(<Epic<AppState>>[
      TypedEpic<AppState, GetLocationStart>(_getLocation),
      TypedEpic<AppState, GetWeatherStart>(_getWeather),
    ]);
  }

  Stream<AppAction> _getLocation(Stream<GetLocationStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetLocationStart event) => _locationApi.getLocation())
        .expand((Location location) {
      return <AppAction>[
        GetLocation.successful(location),
        const GetWeatherStart(),
      ];
    }).onErrorReturnWith((Object error, StackTrace stackTrace) => GetLocation.error(error, stackTrace));
  }

  Stream<AppAction> _getWeather(Stream<GetWeatherStart> actions, EpicStore<AppState> store) {
    return actions //
        .asyncMap((GetWeatherStart event) => _weatherApi.getWeather(store.state.location!))
        .map((OpenWeather weather) => GetWeather.successful(weather))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetWeather.error(error, stackTrace));
  }
}
