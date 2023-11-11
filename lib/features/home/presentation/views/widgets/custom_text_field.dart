import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/current_weather_cubit.dart';
import '../../../../../core/utilis/app_colors.dart';
import '../../../../../core/utilis/functions/out_line_input_border.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({super.key});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late String cityName;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: TextFormField(
        onSaved: (newValue) {
          cityName = newValue!;
        },
        validator: (value) {
          if (value != null) {
            if (value.isEmpty) {
              return 'field is required';
            }
          }
          return null;
        },
        cursorColor: Colors.white,
        decoration: InputDecoration(
          fillColor: AppColors.darkColor,
          filled: true,
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                BlocProvider.of<CurrentWeatherCubit>(context)
                    .fetchCurrentWeather(cityName: cityName);
              }
            },
          ),
          hintText: 'Search a City',
          enabledBorder: outLineInputBorder(),
          focusedBorder: outLineInputBorder(),
        ),
      ),
    );
  }
}
