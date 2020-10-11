import 'dart:math';

import 'package:flutter_bloc_tutorial/api/WeatherRepository.dart';
import 'package:flutter_bloc_tutorial/data/model/Weather.dart';

class MockRepository implements WeatherRepository {
  double cachedTempCelsius;

  @override
  Future<Weather> fetchDetailedWeather(String cityName) {
    return Future.delayed(Duration(seconds: 3), () {
      return Weather(
          cityName: cityName,
          temperatureCelsius: cachedTempCelsius,
          temperatureFahrenheit: cachedTempCelsius * 1.8 + 32 );
    });
  }

  @override
  Future<Weather> fetchWeather(String cityName) {
    return Future.delayed(Duration(seconds: 1), () {
      final rand = Random();
      if (rand.nextBool()) {
        throw NetworkError();
      }
      cachedTempCelsius = 20 + rand.nextInt(15) + rand.nextDouble();
      return Weather(cityName: cityName, temperatureCelsius: cachedTempCelsius);
    });
  }
}

class NetworkError extends Error {}
