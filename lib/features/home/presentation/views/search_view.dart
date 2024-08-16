import 'package:flutter/material.dart';
import 'package:waether_app/core/utilis/app_colors.dart';
import 'package:waether_app/features/home/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightColor,
      body: SearchViewBody(),
    );
  }
}
