import 'package:go_router/go_router.dart';
import '../../../presentation/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: '/coffee_screen',
      name: CoffeeShopScreen.name,
      builder: (context, state) => const CoffeeShopScreen()),
  // GoRoute(
  //   path: '/details_screen/:product',
  //   name: DetailsProductScreen.name,
  //   pageBuilder: (context, state) {
  //   return CustomTransitionPage(
  //     key: state.pageKey,
  //     child: DetailsProductScreen(
  //       product: state.pathParameters['product'],
  //     ),
  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
  //       // Change the opacity of the screen using a Curve based on the the animation's
  //       // value
  //       return FadeTransition(
  //         opacity:
  //             CurveTween(curve: Curves.easeInOutCirc).animate(animation),
  //         child: child,
  //       );
  //     },
  //   );
  // )
]);
