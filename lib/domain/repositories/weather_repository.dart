import 'package:dio/dio.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

class WeatherRepository {
  Future<WeatherModel?> getWeatherModel({
    required String city,
  }) async {
    //http://api.weatherapi.com/v1/current.json?key=11c966fb78f14b7e96f123248232010&q=London&aqi=no
    final response = await Dio().get(
        'http://api.weatherapi.com/v1/current.json?key=11c966fb78f14b7e96f123248232010&q=London&aqi=no');
    return const WeatherModel(city: 'Warsaw', temperature: -5.5);
  }
}
