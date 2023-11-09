import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:waether_app/core/utilis/app_router.dart';
import 'package:waether_app/core/utilis/service_locator.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp.router(
      routerConfig: AppRouter.route,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}
