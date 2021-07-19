import 'package:flutter/material.dart';
import 'package:weather_app/src/models/index.dart';

class WeatherBox extends StatelessWidget {
  const WeatherBox({Key? key, required this.hourly, required this.index}) : super(key: key);

  final Details hourly;
  final int index;

  // TODO(ursachecodrut): same as today_weather_widget.dart
  double _getCelsiusFromKelvin(double temp) {
    return temp - 274.15;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.4,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Column(
        children: <Widget>[
          Text(
            '${_getCelsiusFromKelvin(hourly.temp).toStringAsFixed(1)}\u2103',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Image(
            image: NetworkImage('http://openweathermap.org/img/wn/${hourly.weather[0].icon}@2x.png'),
            width: 50,
            height: 50,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            hourly.weather[0].main,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
