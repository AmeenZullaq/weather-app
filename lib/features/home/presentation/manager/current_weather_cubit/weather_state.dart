part of 'weather_cubit.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

final class WeatherInitial extends WeatherState {}

final class WeatherLoading extends WeatherState {}

final class WeatherFailure extends WeatherState {
  final String errMessage;

  const WeatherFailure(this.errMessage);
}

final class WeatherSuccess extends WeatherState {
  final WeatherModel weatherModel;

  const WeatherSuccess(this.weatherModel);
}
