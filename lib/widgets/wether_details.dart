import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class CustomWeatherDetails extends StatelessWidget {
  const CustomWeatherDetails({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  final WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(weatherData!.getImage()),
        Text(
          weatherData!.temp.toInt().toString(),
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        Column(
          children: [
            Text('maxTemp :${weatherData!.maxTemp.toInt()}'),
            Text('minTemp : ${weatherData!.minTemp.toInt()}'),
          ],
        ),
      ],
    );
  }
}
