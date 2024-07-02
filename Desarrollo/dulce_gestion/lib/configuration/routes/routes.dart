import 'package:dulce_gestion/presentation/presentation.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: InitialScreen.name,
    builder: (context, state) => const InitialScreen(),
  )
]);
