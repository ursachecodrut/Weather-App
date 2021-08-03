import 'package:flutter/material.dart';
import 'package:weather_app/src/models/index.dart';

class HourBox extends StatelessWidget {
  const HourBox({Key? key, required this.hourly, required this.index}) : super(key: key);

  final Details hourly;
  final int index;

  String _convertIndexToHourFormat(int index) {
    final double _core;
    if (index >= 24) {
      index -= 24;
      _core = index / 10;
      if (_core.toInt() > 0) {
        return '$index:00';
      }
      return '0$index:00';
    }
    _core = index / 10;
    if (_core.toInt() > 0) {
      return '$index:00';
    }
    return '0$index:00';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.all(15),
      child: Column(
        children: <Widget>[
          Text(
            _convertIndexToHourFormat(index),
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
            '${hourly.celsiusTemp.toStringAsFixed(1)}\u00B0',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
