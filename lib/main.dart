import 'package:coffee_app_routes/config/helper/router/app_router.dart';
import 'package:coffee_app_routes/config/theme/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().themeData(),
      routerConfig: appRouter,
    );
  }
}
