import 'package:auto_route/auto_route.dart';
import 'package:pulse/feature/home/presentation/home_screen.dart';
part 'app_router.gr.dart';

@RoutePage(name: "HomeRouter")
class HomeRouterTabScreen extends AutoRouter {
  const HomeRouterTabScreen({super.key});
}

@RoutePage(name: "DashboardTab")
class DashboardTabScreen extends AutoRouter {
  const DashboardTabScreen({super.key});
}

@RoutePage(name: "SettingsTab")
class SettingsTabScreen extends AutoRouter {
  const SettingsTabScreen({super.key});
}

@RoutePage(name: "ProjectsTab")
class ProjectsTabScreen extends AutoRouter {
  const ProjectsTabScreen({super.key});
}

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRouter.page,
          path: '/',
          children: [
            AutoRoute(
              path: '',
              page: HomeRoute.page,
              children: [
                AutoRoute(
                  path: '',
                  page: DashboardTab.page,
                ),
                AutoRoute(
                  path: '',
                  page: ProjectsTab.page,
                ),
                AutoRoute(
                  path: '',
                  page: SettingsTab.page,
                ),
              ],
            ),
          ],
        )
      ];
}
