import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/hour_box.dart';

class HourlyWidget extends StatelessWidget {
  const HourlyWidget({Key? key}) : super(key: key);

  int _getCurrentHour() {
    final DateTime now = DateTime.now();
    return int.parse(now.toString().substring(11, 13));
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
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Hourly',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        'Swipe for 48h',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        CupertinoIcons.arrow_right,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Divider(color: Colors.white54),
            SizedBox(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: weather.hourly.length,
                itemBuilder: (BuildContext context, int index) {
                  //44
                  if (index >= _getCurrentHour())
                    return Container(
                      margin: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                      child: HourBox(hourly: weather.hourly[index], index: index),
                    );
                  else
                    return const SizedBox.shrink();
                },
              ),
            ),
            const Divider(color: Colors.white54),
          ],
        );
      },
    );
  }
}
