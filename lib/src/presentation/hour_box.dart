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
    final double _screenWidth = MediaQuery.of(context).size.width;
    final double _boxWidth = MediaQuery.of(context).size.width / 4;
    final double _boxPadding = (_screenWidth - 4 * _boxWidth) / 8;
    return Container(
      width: _boxWidth,
      margin: EdgeInsetsDirectional.fromSTEB(_boxPadding, 10, _boxPadding, 10),
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
