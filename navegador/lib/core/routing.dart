import 'package:go_router/go_router.dart';
import 'package:navegador/presentations/screens/home_screen.dart';
import 'package:navegador/presentations/screens/login_screen.dart';
import 'package:navegador/presentations/screens/restaurants_screen/restaurant_detail.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state){
        //state.extra lo que mandaste desde la pantalla anterior
        //as String? = “tratá esto como un String”
        //?? '' = si viene null, usá vacío
        final username = state.extra as String? ?? '';
        return HomeScreen(userName: username);
      },
    ),
    GoRoute(
      path: '/restaurant-details',
      name: 'details',
      builder: (context, state){
        final id = state.extra as int? ?? 0;
        return RestaurantDetail(id: id);
      },
    )
  ],
);