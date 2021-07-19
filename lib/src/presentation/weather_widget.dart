import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/weather_box.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key? key}) : super(key: key);

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
          // TODO(ursachecodrut): use EdgeInsetsDirectional
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Hourly',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: const <Widget>[
                      Text(
                        '24h',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: weather.hourly.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      // TODO(ursachecodrut): use EdgeInsetsDirectional
                      margin: const EdgeInsets.only(right: 15),
                      child: WeatherBox(hourly: weather.hourly[index], index: index),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
