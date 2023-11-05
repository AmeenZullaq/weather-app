import 'package:equatable/equatable.dart';

import 'current.dart';
import 'location.dart';

class CurrentWeatherModel extends Equatable {
  final Location? location;
  final Current? current;

  const CurrentWeatherModel({this.location, this.current});

  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherModel(
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      current: json['current'] == null
          ? null
          : Current.fromJson(json['current'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() => {
        'location': location?.toJson(),
        'current': current?.toJson(),
      };

  @override
  List<Object?> get props => [location, current];
}
