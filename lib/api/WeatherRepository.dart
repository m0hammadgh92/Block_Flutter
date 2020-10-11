import 'package:flutter_bloc_tutorial/data/model/Weather.dart';

abstract class WeatherRepository {
  Future<Weather> fetchWeather(String cityName);

  Future<Weather> fetchDetailedWeather(String cityName);
}
