import 'package:flutter/material.dart';
import 'package:weather_app/src/presentation/today_weather_widget.dart';
import 'package:weather_app/src/presentation/weather_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff030317),
      // appBar: AppBar(
      //   title: const Text('Weather App'),
      //   centerTitle: true,
      // ),
      body: Column(
        children: const <Widget>[
          CurrentWeather(),
          WeatherWidget(),
        ],
      ),
    );
  }
}
