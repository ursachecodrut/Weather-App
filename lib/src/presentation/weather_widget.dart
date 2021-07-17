import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/open_weather.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  double _getCelsiusFromKelvin(double temp) {
    return temp - 274.15;
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
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Theme.of(context).accentColor,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  if (weather.current.weather.isNotEmpty)
                    Column(
                      children: <Widget>[
                        Image.network(
                          'http://openweathermap.org/img/wn/${weather.current.weather[0].icon}@2x.png',
                        ),
                        Text(
                          weather.current.weather[0].main,
                          style: const TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  Column(
                    children: <Widget>[
                      Text(
                        '${_getCelsiusFromKelvin(weather.current.temp).toStringAsFixed(1)} \u2103',
                        style: const TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        //weather!.current.feels_like
                        'Feels like ${_getCelsiusFromKelvin(weather.current.feelsLike).toStringAsFixed(1)} \u2103',
                        style: const TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
