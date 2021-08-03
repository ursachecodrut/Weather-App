import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/index.dart';

class DailyWidget extends StatelessWidget {
  const DailyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> days = <String>['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return WeatherContainer(
      builder: (BuildContext context, OpenWeather? weather) {
        if (weather == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        print(weather.daily.length);
        return Column(
          children: <Widget>[
            for (int i = 0; i < weather.daily.length - 1; i++)
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          days[i],
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Image(
                          image: NetworkImage(
                              'http://openweathermap.org/img/wn/${weather.daily[i].weather.first.icon}@2x.png'),
                          width: 60,
                          height: 60,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '${weather.daily[i].temp.celsiusDay.toStringAsFixed(0)}\u00B0 / ',
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              '${weather.daily[i].temp.celsiusNight.toStringAsFixed(0)}\u00B0',
                              style: const TextStyle(
                                fontSize: 20,
                                color: Colors.white60,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const Divider(color: Colors.white54),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
