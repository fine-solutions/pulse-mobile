// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRouter.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeRouterTabScreen(),
      );
    },
    DashboardTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardTabScreen(),
      );
    },
    SettingsTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsTabScreen(),
      );
    },
    ProjectsTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProjectsTabScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [HomeRouterTabScreen]
class HomeRouter extends PageRouteInfo<void> {
  const HomeRouter({List<PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          initialChildren: children,
        );

  static const String name = 'HomeRouter';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardTabScreen]
class DashboardTab extends PageRouteInfo<void> {
  const DashboardTab({List<PageRouteInfo>? children})
      : super(
          DashboardTab.name,
          initialChildren: children,
        );

  static const String name = 'DashboardTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsTabScreen]
class SettingsTab extends PageRouteInfo<void> {
  const SettingsTab({List<PageRouteInfo>? children})
      : super(
          SettingsTab.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProjectsTabScreen]
class ProjectsTab extends PageRouteInfo<void> {
  const ProjectsTab({List<PageRouteInfo>? children})
      : super(
          ProjectsTab.name,
          initialChildren: children,
        );

  static const String name = 'ProjectsTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
