import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/core/widgets/custom_error_widget.dart';
import 'package:waether_app/core/widgets/custom_loading_indecator.dart';
import 'package:waether_app/features/home/data/models/weather_model/weather_model/weather_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../../../../core/utilis/styles.dart';
import '../../manager/current_weather_cubit/weather_cubit.dart';

class TodayWeather extends StatelessWidget {
  const TodayWeather({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherCubit, WeatherState>(
      builder: (context, state) {
        if (state is WeatherSuccess) {
          WeatherModel weatherModel = state.weatherModel;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                weatherModel.location.name,
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                weatherModel.current.condition.text,
                style: Styles.textStyle18,
              ),
              Stack(
                children: [
                  Center(
                    child: Text(
                      '${weatherModel.current.tempC}°',
                      style: Styles.textStyle150,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 65,
                        right: 65,
                      ),
                      child: Opacity(
                        opacity: 0.8,
                        child: CachedNetworkImage(
                          height: 150,
                          fit: BoxFit.fill,
                          imageUrl:
                              'https:${weatherModel.current.condition.icon}',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                weatherModel.location.localtime,
                style: Styles.textStyle18,
              ),
            ],
          );
        } else if (state is WeatherFailure) {
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
