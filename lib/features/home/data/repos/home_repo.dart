import 'package:dartz/dartz.dart';
import 'package:waether_app/core/errors/failure.dart';

import '../models/weather_model/weather_model/weather_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, WeatherModel>> fetchCurrentWeather({
    required String cityName,
  });

  // Future<Either<Failure, List<ForecastWeatherModel>>> fetchForecastWeather({
  //   required String cityName,
  // });
}
