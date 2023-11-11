import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/core/widgets/custom_error_widget.dart';
import 'package:waether_app/core/widgets/custom_loading_indecator.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/current_weather_cubit.dart';
import 'hourly_forecast_list_view_item.dart';

class HourlyForecastListView extends StatelessWidget {
  const HourlyForecastListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentWeatherCubit, CurrentWeatherState>(
      builder: (context, state) {
        if (state is CurrentWeatherSuccess) {
          WeatherModel weather = state.weatherModel;
          return SizedBox(
            height: 135,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: weather.forecast.forecastday[0].hour.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                return HourlyForecastListViewItem(
                  hourWeather: weather.forecast.forecastday[0].hour[index],
                  index: index,
                );
              },
            ),
          );
        } else if (state is CurrentWeatherFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
