import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:waether_app/core/errors/failure.dart';
import 'package:waether_app/core/utilis/api_service.dart';
import 'package:waether_app/features/home/data/models/current_weather_model/current_weather_model.dart';
import 'package:waether_app/features/home/data/repos/home_repo.dart';
import '../../../../core/errors/server_failure.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;
  final String apiKey = '4113f1d0d5a94ed693582814232610';

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, CurrentWeatherModel>> fetchCurrentWeather({
    required String cityName,
  }) async {
    try {
      var data = await apiService.get(
        endPoint: 'current.json?key=$apiKey&q=$cityName',
      );
      CurrentWeatherModel currentWeaher = CurrentWeatherModel.fromJson(data);
      return right(currentWeaher);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(
          ServerFailure(e.toString()),
        );
      }
    }
  }
}