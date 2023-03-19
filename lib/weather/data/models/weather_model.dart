import 'package:weather_clean_architecture/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(
      super.id, super.cityName, super.main, super.description, super.pressure);

  /*
  Factory constructors return an instance of the class (if it exists) rather than
  creating a new instance.
   */
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(json["id"], json["name"], json["weather"][0]["main"],
        json["weather"][0]["description"], json["main"]["pressure"]);
  }
}
