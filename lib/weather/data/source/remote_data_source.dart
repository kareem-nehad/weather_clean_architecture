import 'dart:convert';

import 'package:weather_clean_architecture/core/utils/constants.dart';
import 'package:weather_clean_architecture/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';
abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async {
    try {
      var response = await Dio().get('${AppConstants.baseUrl}/weather?q=$cityName&appid=${AppConstants.apiKey}');
      print(response.data);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }
  }
}