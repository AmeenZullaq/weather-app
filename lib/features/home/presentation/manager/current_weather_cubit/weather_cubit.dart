import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import 'package:waether_app/features/home/data/repos/home_repo.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.homeRepo) : super(WeatherInitial());
  final HomeRepo homeRepo;

  final TextEditingController searchController = TextEditingController();

  Future fetchWeatherInfo({
    required int daysNumber,
  }) async {
    emit(WeatherLoading());
    var result = await homeRepo.fetchWeatherInfo(
      cityName: searchController.text,
      daysNumber: daysNumber,
    );
    result.fold(
      (left) {
        emit(
          WeatherFailure(left.errMessage),
        );
      },
      (right) {
        emit(
          WeatherSuccess(right),
        );
      },
    );
  }
}
