// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/custom-city_name_text.dart';
import 'package:weather_app/widgets/weather_status.dart';
import 'package:weather_app/widgets/weather_updated_time.dart';
import 'package:weather_app/widgets/wether_details.dart';

class SuccessBody extends StatelessWidget {
  const SuccessBody({
    Key? key,
    required this.weatherData,
  }) : super(key: key);

  final WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          weatherData!.getThemeColor(),
          weatherData!.getThemeColor()[300]!,
          weatherData!.getThemeColor()[100]!,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          CustomCityNameText(),
          CustomUpdatedTime(weatherData: weatherData),
          const Spacer(),
          CustomWeatherDetails(weatherData: weatherData),
          const Spacer(),
          CustomWeatherstatus(weatherData: weatherData),
          const Spacer(
            flex: 5,
          ),
        ],
      ),
    );
  }
}
