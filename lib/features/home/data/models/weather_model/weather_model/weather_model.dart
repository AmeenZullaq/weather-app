import 'package:equatable/equatable.dart';

import 'current.dart';
import 'forecast.dart';
import 'location.dart';

class WeatherModel extends Equatable {
  final Location location;
  final Current current;
  final Forecast forecast;

  const WeatherModel(
      {required this.location, required this.current, required this.forecast});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        location: Location.fromJson(json['location'] as Map<String, dynamic>),
        current: Current.fromJson(json['current'] as Map<String, dynamic>),
        forecast: Forecast.fromJson(json['forecast'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'location': location.toJson(),
        'current': current.toJson(),
        'forecast': forecast.toJson(),
      };

  @override
  List<Object?> get props => [location, current, forecast];
}
