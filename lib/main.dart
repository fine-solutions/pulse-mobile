import 'package:flutter/material.dart';
import 'package:pulse/core/di/di_container.dart';

void main() async {
  final IDiContainer container = DiContainer();
  final app = await container.configureDependencies();
  runApp(app);
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
