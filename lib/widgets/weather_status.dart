import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class CustomWeatherstatus extends StatelessWidget {
  const CustomWeatherstatus({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  final WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Text(
      weatherData!.weatherStateName,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
