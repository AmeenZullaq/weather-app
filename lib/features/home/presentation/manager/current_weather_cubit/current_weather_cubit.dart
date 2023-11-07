import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import 'package:waether_app/features/home/data/repos/home_repo.dart';

part 'current_weather_state.dart';

class CurrentWeatherCubit extends Cubit<CurrentWeatherState> {
  CurrentWeatherCubit(this.homeRepo) : super(CurrentWeatherInitial());
  final HomeRepo homeRepo;

  Future fetchCurrentWeather({required String cityName}) async {
    emit(CurrentWeatherLoading());

    var result = await homeRepo.fetchCurrentWeather(cityName: cityName);
    result.fold(
      (left) {
        emit(CurrentWeatherFailure(left.errMessage));
      },
      (right) {
        emit(CurrentWeatherSuccess(right));
      },
    );
  }
}
