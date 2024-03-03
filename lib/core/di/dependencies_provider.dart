import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/di/dependencies.dart';

/// A Wrapper of Application Widget that provides required dependencies
/// It is strongly suggested to combine all needed dependencies in `Dependencies` class
/// In case that some mutable dependencies are needed replace `Provider` with `MultiProvider`

class DependenciesProvider extends StatelessWidget {
  final Widget child;
  final Dependencies dependencies;
  const DependenciesProvider({
    super.key,
    required this.child,
    required this.dependencies,
  });

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => dependencies,
      child: child,
    );
  }
}
