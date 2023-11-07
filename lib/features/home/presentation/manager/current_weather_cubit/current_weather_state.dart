part of 'current_weather_cubit.dart';

abstract class CurrentWeatherState extends Equatable {
  const CurrentWeatherState();

  @override
  List<Object> get props => [];
}

final class CurrentWeatherInitial extends CurrentWeatherState {}

final class CurrentWeatherLoading extends CurrentWeatherState {}

final class CurrentWeatherFailure extends CurrentWeatherState {
  final String errMessage;

  const CurrentWeatherFailure(this.errMessage);
}

final class CurrentWeatherSuccess extends CurrentWeatherState {
  final WeatherModel weatherModel;

  const CurrentWeatherSuccess(this.weatherModel);
}
