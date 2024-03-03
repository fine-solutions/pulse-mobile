import 'package:flutter/material.dart';
import 'package:pulse/core/di/dependencies.dart';
import 'package:pulse/core/di/dependencies_provider.dart';
import 'package:pulse/core/navigation/app_router.dart';
import 'package:pulse/feature/home/presentation/home_screen_model.dart';
import 'package:pulse/main.dart';

/// An Interface for DI Container
/// Use it to easily replace required application dependencies and testing
abstract class IDiContainer {
  Future<Widget> configureDependencies();
}

class DiContainer implements IDiContainer {
  @override
  Future<Widget> configureDependencies() async {
    final dependencies = Dependencies(
      homeModel: _homeScreenModelFactory(),
    );
    return DependenciesProvider(
      dependencies: dependencies,
      child: App(
        appRouter: _appRouter,
      ),
    );
  }

  late final AppRouter _appRouter = AppRouter();

  IHomeScreenModel _homeScreenModelFactory() => HomeScreenModel();
}
