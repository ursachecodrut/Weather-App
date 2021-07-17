import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/models/index.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<OpenWeather?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, OpenWeather?>(
      converter: (Store<AppState> store) => store.state.weather,
      builder: builder,
    );
  }
}
