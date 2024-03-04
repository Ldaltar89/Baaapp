import 'package:baaapp/features/auth/presentation/screens/home_auth_screen.dart';
import 'package:baaapp/features/auth/presentation/screens/login_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/login', routes: [
  //*Auth Routes
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
  ),
  GoRoute(
    path: '/pagelogin',
    builder: (context, state) => const LoginPage(),
  ),
]);
