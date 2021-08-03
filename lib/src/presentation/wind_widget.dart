import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/index.dart';

class WindWidget extends StatelessWidget {
  const WindWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeatherContainer(
      builder: (BuildContext context, OpenWeather? weather) {
        if (weather == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10, 30, 10, 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Wind Speed',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                '${weather.current.windSpeed.toStringAsFixed(0)} m/s',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
