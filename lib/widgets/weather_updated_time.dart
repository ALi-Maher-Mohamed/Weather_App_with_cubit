import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class CustomUpdatedTime extends StatelessWidget {
  const CustomUpdatedTime({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  final WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Text(
      'updated at : ${weatherData!.date.hour.toString()}:${weatherData!.date.minute.toString()}',
      style: const TextStyle(
        fontSize: 22,
      ),
    );
  }
}
