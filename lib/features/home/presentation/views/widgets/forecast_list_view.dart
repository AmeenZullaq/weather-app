import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/core/widgets/custom_error_widget.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/weather_cubit.dart';
import '../../../../../core/widgets/forecast_shimmer_view.dart';
import 'forecast_list_view_item.dart';

class ForecastListView extends StatelessWidget {
  const ForecastListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherSuccess) {
          WeatherModel weather = state.weatherModel;
          return ListView.separated(
            physics: const BouncingScrollPhysics(),
            itemCount: weather.forecast.forecastday.length,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemBuilder: (context, index) {
              return ForecastListViewItem(
                weather: weather,
                index: index,
              );
            },
          );
        } else if (state is WeatherFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const ForecastShimmerView();
        }
      },
    );
  }
}
