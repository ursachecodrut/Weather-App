import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/index.dart';

class HumidityWidget extends StatelessWidget {
  const HumidityWidget({Key? key}) : super(key: key);

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
          padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Humidity',
                    style: TextStyle(fontSize: 22),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2,
                    child: SfRadialGauge(
                      axes: <RadialAxis>[
                        RadialAxis(
                          minimum: 0,
                          maximum: 100,
                          showLabels: false,
                          showTicks: false,
                          pointers: <GaugePointer>[
                            RangePointer(
                              color: Colors.white,
                              value: weather.current.humidity,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 0.2,
                              sizeUnit: GaugeSizeUnit.factor,
                              enableAnimation: true,
                              animationDuration: 500,
                              animationType: AnimationType.ease,
                            )
                          ],
                          axisLineStyle: const AxisLineStyle(
                            thickness: 0.2,
                            cornerStyle: CornerStyle.bothCurve,
                            color: Colors.white24,
                            thicknessUnit: GaugeSizeUnit.factor,
                          ),
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                              positionFactor: 0.1,
                              angle: 90,
                              widget: Text(
                                '${weather.current.humidity.toStringAsFixed(0)}%',
                                style: const TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Feels like ${weather.current.celsiusFeelsLike.toStringAsFixed(1)}\u00B0',
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'UV index ${weather.current.uvi.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
