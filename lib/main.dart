import 'package:flutter/material.dart';
import 'package:pulse/core/di/di_container.dart';
import 'package:pulse/core/navigation/app_router.dart';

void main() async {
  final IDiContainer container = DiContainer();
  final app = await container.configureDependencies();
  runApp(app);
}

class App extends StatelessWidget {
  final AppRouter appRouter;
  const App({
    super.key,
    required this.appRouter,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      routeInformationProvider: appRouter.routeInfoProvider(),
    );
  }
}
