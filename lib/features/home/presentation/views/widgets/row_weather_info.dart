import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/core/widgets/custom_error_widget.dart';
import 'package:waether_app/core/widgets/custom_loading_indecator.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/current_weather_cubit.dart';
import '../../../../../core/utilis/assets.dart';
import 'weather_info_item.dart';

class RowWeatherInfo extends StatelessWidget {
  const RowWeatherInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentWeatherCubit, CurrentWeatherState>(
      builder: (context, state) {
        if (state is CurrentWeatherSuccess) {
          WeatherModel weatherModel = state.weatherModel;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              WeatherInfoItem(
                image: AssetsData.umbrella,
                text1: '${weatherModel.current!.precipMm}',
                text2: 'Precipitation',
              ),
              WeatherInfoItem(
                image: AssetsData.humidity,
                text1: '${weatherModel.current!.humidity}',
                text2: 'Humidity',
              ),
              WeatherInfoItem(
                image: AssetsData.windSpeed,
                text1: '9km/h',
                text2: '${weatherModel.current!.windKph}',
              ),
            ],
          );
        } else if (state is CurrentWeatherFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndecator();
        }
      },
    );
  }
}
