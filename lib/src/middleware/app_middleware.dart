import 'package:redux/redux.dart';
import 'package:weather_app/src/actions/index.dart';
import 'package:weather_app/src/data/location_api.dart';
import 'package:weather_app/src/data/weather_api.dart';
import 'package:weather_app/src/models/index.dart';

class AppMiddleware {
  AppMiddleware({required LocationApi locationApi, required WeatherApi weatherApi})
      : _locationApi = locationApi,
        _weatherApi = weatherApi;

  final LocationApi _locationApi;
  final WeatherApi _weatherApi;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetLocationStart>(_getLocation),
      TypedMiddleware<AppState, GetWeatherStart>(_getWeather),
    ];
  }

  Future<void> _getLocation(Store<AppState> store, GetLocation action, NextDispatcher next) async {
    next(action);
    try {
      final Location location = await _locationApi.getLocation();
      store.dispatch(GetLocation.successful(location));
      store.dispatch(const GetWeatherStart());
    } catch (error, stackTrace) {
      store.dispatch(GetLocation.error(error, stackTrace));
    }
  }

  Future<void> _getWeather(Store<AppState> store, GetWeather action, NextDispatcher next) async {
    next(action);

    try {
      final OpenWeather weather = await _weatherApi.getWeather(store.state.location!);
      store.dispatch(GetWeather.successful(weather));
    } catch (error, stackTrace) {
      print(stackTrace);
      store.dispatch(GetWeather.error(error, stackTrace));
    }
  }
}
