import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/container/location_container.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/index.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({Key? key}) : super(key: key);

  String _inCaps(String string) {
    return '${string[0].toUpperCase()}${string.substring(1)}';
  }

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
          padding: const EdgeInsetsDirectional.only(top: 30),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LocationContainer(
                    builder: (BuildContext context, Location? location) {
                      if (location == null) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      return Text(
                        location.city,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      );
                    },
                  ),
                  const Icon(
                    Icons.location_on,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(
                '${weather.current.celsiusTemp.toStringAsFixed(0)}\u00B0',
                style: const TextStyle(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Feels like ${weather.current.celsiusFeelsLike.toStringAsFixed(1)}\u00B0',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                _inCaps(weather.current.weather.first.description),
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        );
      },
    );
  }
}
