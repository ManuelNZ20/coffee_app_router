
import 'package:go_router/go_router.dart';
import '../../../presentation/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context,state) => const HomeScreen()
    ),
    GoRoute(
      path: '/coffee_screen',
      name: CoffeeShopScreen.name,
      builder: (context,state) => const CoffeeShopScreen()
    ),
  ]
);
