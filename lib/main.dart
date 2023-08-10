import 'package:coffee_app_routes/config/helper/router/app_router.dart';
import 'package:coffee_app_routes/config/theme/app_theme.dart';
import 'package:coffee_app_routes/infrastructure/datasources/coffee_datasource_impl.dart';
import 'package:coffee_app_routes/infrastructure/datasources/coffee_marker_datasource_impl.dart';
import 'package:coffee_app_routes/infrastructure/repositories/coffee_marker_repository_impl.dart';
import 'package:coffee_app_routes/infrastructure/repositories/coffee_repository_impl.dart';
import 'package:coffee_app_routes/presentation/providers/coffee_marker_provider.dart';
import 'package:coffee_app_routes/presentation/providers/coffee_provider.dart';
import 'package:coffee_app_routes/presentation/providers/favorite_product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final coffeeRepository =
        CoffeeRepositoryImpl(coffeeDataSource: LocalCoffeeDataSource());
    final coffeeMarkerRepository = CoffeeMarkerRepositoryImpl(
        coffeeMarkerDataSource: LocalCoffeeMarkerDataSource());
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => CoffeeProvider(coffeeRepository: coffeeRepository)
              ..addCoffeeData()),
        ChangeNotifierProvider(
            create: (_) => CoffeeMarkerProvider(
                coffeeMarkerRepository: coffeeMarkerRepository)
              ..addCoffeeMarkerData()),
        ChangeNotifierProvider(create: (_) => MyAppState())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().themeData(),
        routerConfig: appRouter,
      ),
    );
  }
}
