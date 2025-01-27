import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.service) : super(WeatherInitial());
  WeatherService service;
  String? cityName;
  WeatherModel? weather;
  void getweather({required String cityName}) async {
    emit(WeatherLoading());
    try {
      weather = await service.getWeather(cityName: cityName);
      emit(WeatherSuccess());
    } catch (e) {
      emit(WeatherFailure());
    }
  }
}
