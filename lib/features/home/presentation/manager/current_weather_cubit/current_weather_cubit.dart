import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';

part 'current_weather_state.dart';

class CurrentWeatherCubit extends Cubit<CurrentWeatherState> {
  CurrentWeatherCubit() : super(CurrentWeatherInitial());
}
