import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_glow/flutter_glow.dart';
import 'package:weather_app/src/container/location_container.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/index.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WeatherContainer(
      builder: (BuildContext context, OpenWeather? weather) {
        if (weather == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return GlowContainer(
          height: MediaQuery.of(context).size.height - 250,
          margin: const EdgeInsetsDirectional.all(2),
          padding: const EdgeInsetsDirectional.fromSTEB(30, 50, 30, 0),
          glowColor: Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          ),
          color: Theme.of(context).accentColor,
          spreadRadius: 5,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Icon(
                    CupertinoIcons.square_grid_2x2,
                    color: Colors.white,
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        CupertinoIcons.map_fill,
                        color: Colors.white,
                      ),
                      LocationContainer(
                        builder: (BuildContext context, Location? location) {
                          if (location == null) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return Text(
                            '  ${location.city}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          );
                        },
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 300,
                child: Stack(
                  children: <Widget>[
                    Image(
                      image: NetworkImage('http://openweathermap.org/img/wn/${weather.current.weather[0].icon}@2x.png'),
                      width: 250,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            GlowText(
                              '${weather.current.celsiusTemp.toStringAsFixed(1)}\u2103',
                              blurRadius: 2,
                              style: const TextStyle(
                                height: 0.1,
                                fontSize: 80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 15),
                            Text(
                              'Feels like ${(weather.current.celsiusFeelsLike).toStringAsFixed(1)}\u2103',
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.white),
              Container(
                margin: const EdgeInsetsDirectional.only(top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Text(
                          'Wind Speed',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '${weather.current.windSpeed.toString()}m/s',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'Humidity',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '${weather.current.humidity.toString()}%',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'Pressure',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          '${weather.current.pressure.toString()}hPa',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
