/*
Usecases represent functionalities that the app will need to carry out.
 */
import 'package:weather_clean_architecture/weather/domain/entities/weather.dart';
import 'package:weather_clean_architecture/weather/domain/repository/weather_repository.dart';

class GetWeatherByCountry {
  final BaseWeatherRepository repository;

  GetWeatherByCountry(this.repository);

  /*
  The method uses the abstract function in the repository which returns a future,
  hence, this method should also return a future.
   */
  Future<Weather> execute(String cityName) async {
    return await repository.getWeatherByCityName(cityName);
  }
}
