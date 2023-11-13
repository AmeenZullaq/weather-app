import 'package:dartz/dartz.dart';
import 'package:waether_app/core/errors/failure.dart';
import '../models/weather_model/weather_model/weather_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, WeatherModel>> fetchWeatherInfo({
    required String cityName,
    required int daysNumber,
  });
}
