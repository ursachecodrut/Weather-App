import 'package:flutter/material.dart';
import 'package:weather_app/src/presentation/daily_widget.dart';
import 'package:weather_app/src/presentation/humidity_widget.dart';
import 'package:weather_app/src/presentation/today_weather_widget.dart';
import 'package:weather_app/src/presentation/hourly_widget.dart';
import 'package:weather_app/src/presentation/wind_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        shadowColor: Theme.of(context).accentColor,
        elevation: 10,
      ),
      backgroundColor: Colors.lightBlue,
      body: ListView(
        children: const <Widget>[
          CurrentWeather(),
          HourlyWidget(),
          DailyWidget(),
          HumidityWidget(),
          Divider(color: Colors.white54),
          WindWidget(),
        ],
      ),
    );
  }
}
