import 'package:dartz/dartz.dart';
import 'package:waether_app/core/errors/failure.dart';
import 'package:waether_app/features/home/data/models/current_weather_model/current_weather_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, CurrentWeatherModel>> fetchCurrentWeather({
    required String cityName,
  });
}
