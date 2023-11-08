import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/core/widgets/custom_error_widget.dart';
import 'package:waether_app/core/widgets/custom_loading_indecator.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../../core/utilis/styles.dart';
import '../../manager/current_weather_cubit/current_weather_cubit.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CurrentWeatherCubit, CurrentWeatherState>(
      builder: (context, state) {
        if (state is CurrentWeatherSuccess) {
          WeatherModel weatherModel = state.weatherModel;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                weatherModel.location!.name!,
                style: Styles.textStyle30,
              ),
              const SizedBox(height: 10),
              Text(
                weatherModel.current!.condition!.text!,
              ),
              Stack(
                children: [
                  Text(
                    '${weatherModel.current!.tempC}',
                    style: Styles.textStyle150,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 70,
                      top: 70,
                      bottom: 15,
                    ),
                    child: Opacity(
                      opacity: 0.8,
                      child: CachedNetworkImage(
                        height: 130,
                        imageUrl: weatherModel.current!.condition!.icon!,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                weatherModel.location!.localtime!,
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
