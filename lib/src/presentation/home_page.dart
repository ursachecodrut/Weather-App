import 'package:flutter/material.dart';
import 'package:weather_app/src/presentation/location_widget.dart';
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
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
        child: Column(
          children: const <Widget>[
            WeatherWidget(),
            LocationWidget(),
          ],
        ),
      ),
    );
  }
}
