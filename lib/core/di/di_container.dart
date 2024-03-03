import 'package:flutter/material.dart';
import 'package:pulse/core/di/dependencies.dart';
import 'package:pulse/core/di/dependencies_provider.dart';
import 'package:pulse/main.dart';

/// An Interface for DI Container
/// Use it to easily replace required application dependencies and testing
abstract class IDiContainer {
  Future<Widget> configureDependencies();
}

class DiContainer implements IDiContainer {
  @override
  Future<Widget> configureDependencies() async {
    const dependencies = Dependencies();
    return const DependenciesProvider(
      dependencies: dependencies,
      child: App(),
    );
  }
}
