/*
To follow the Dependency Inversion principle of the SOLID, abstraction
is needed to mediate between modules.

module: a section of code that is added in as a whole or is designed for
easy reusability.
 */
import 'package:weather_clean_architecture/weather/domain/entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCityName(String cityName);
}