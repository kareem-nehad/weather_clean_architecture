import 'package:weather_clean_architecture/weather/domain/entities/weather.dart';
import 'package:weather_clean_architecture/weather/domain/repository/weather_repository.dart';

import '../source/remote_data_source.dart';

class WeatherRepository implements BaseWeatherRepository{
  final BaseRemoteDataSource baseRemoteDataSource;


  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    /*
    the remote data source returns a Future of type (WeatherModel), while this method
    should return a Weather entity. This is acceptable as WeatherModel extends Weather
    and is considered a child class of the Weather class.
     */
    return (await baseRemoteDataSource.getWeatherByCountryName(cityName))!;
  }

}