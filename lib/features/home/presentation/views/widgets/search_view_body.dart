import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:waether_app/constants.dart';
import 'package:waether_app/core/utilis/app_router.dart';
import 'package:waether_app/core/utilis/styles.dart';
import 'package:waether_app/features/home/presentation/manager/current_weather_cubit/weather_cubit.dart';
import 'package:waether_app/features/home/presentation/manager/visibility_cubit/visibility_cubit.dart';
import 'package:waether_app/features/home/presentation/views/widgets/custom_text_field.dart';
import 'package:waether_app/features/home/presentation/views/widgets/search_image.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  List<String> citiesName = cities;
  @override
  void initState() {
    super.initState();
    context.read<VisibilityCubit>().focusNode.addListener(
          context.read<VisibilityCubit>().onFocused,
        );
  }

  @override
  Widget build(BuildContext context) {
    VisibilityCubit visibilityCubit = context.read<VisibilityCubit>();
    WeatherCubit weatherCubit = context.read<WeatherCubit>();

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 40.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Your City",
            style: Styles.textStyle30,
          ),
          SizedBox(
            height: 30.h,
          ),
          TypeAheadField(
            focusNode: visibilityCubit.focusNode,
            controller: context.read<WeatherCubit>().searchController,
            builder: (context, controller, focusNode) {
              return CustomTextField(
                controller: controller,
                focusNode: focusNode,
              );
            },
            emptyBuilder: (context) {
              return const SizedBox();
            },
            itemBuilder: (context, value) {
              return Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Text(
                  value,
                  style: Styles.textStyle18.copyWith(
                    color: Colors.white,
                  ),
                ),
              );
            },
            decorationBuilder: (context, child) {
              return SizedBox(
                child: child,
              );
            },
            onSelected: (value) {
              weatherCubit.searchController.text = value;
              weatherCubit.fetchWeatherInfo(daysNumber: 0);
              GoRouter.of(context).push(
                AppRouter.homeView,
              );
            },
            suggestionsCallback: (search) {
              if (search.isEmpty) {
                return [];
              }
              return citiesName
                  .where(
                    (e) => e.toLowerCase().contains(search.toLowerCase()),
                  )
                  .toList();
            },
          ),
          BlocBuilder<VisibilityCubit, bool>(
            builder: (context, state) {
              return Visibility(
                visible: state,
                child: const SearchImage(),
              );
            },
          ),
        ],
      ),
    );
  }
}
