import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/navigation/app_router.dart';
import 'package:pulse/feature/home/presentation/home_screen_wm.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreenWidget(homeScreenWidgetModelFactory);
  }
}

class HomeScreenWidget extends ElementaryWidget<IHomeScreenWidgetModel> {
  const HomeScreenWidget(super.wmFactory, {super.key});

  @override
  Widget build(IHomeScreenWidgetModel wm) {
    return AutoTabsScaffold(
      routes: const [
        DashboardTab(),
        ProjectsTab(),
        SettingsTab(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) {
        return CupertinoTabBar(
          backgroundColor: Colors.white,
          height: kBottomNavigationBarHeight - 12,
          inactiveColor: Colors.black,
          activeColor: const Color(0xff322cfe),
          currentIndex: tabsRouter.activeIndex,
          onTap: (value) => wm.onNavigationItemTap(value, tabsRouter),
          border: const Border(
            top: BorderSide(
              color: Colors.transparent,

              width: 0.0, // 0.0 means one physical pixel
            ),
          ),
          items: [
            _BottomNavigationBarItem(icon: Icons.dashboard_outlined),
            _BottomNavigationBarItem(icon: Icons.track_changes_sharp),
            _BottomNavigationBarItem(icon: Icons.settings),
          ],
        );
      },
    );
  }
}

class _BottomNavigationBarItem extends BottomNavigationBarItem {
  _BottomNavigationBarItem({
    required IconData icon,
    String label = '',
  }) : super(
          icon: _NavigationBarIcon(
            icon: icon,
          ),
          label: label,
          activeIcon: _NavigationBarIcon(
            icon: icon,
          ),
          backgroundColor: Colors.transparent,
        );
}

class _NavigationBarIcon extends StatelessWidget {
  const _NavigationBarIcon({
    required this.icon,
    Key? key,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(
            icon,
            size: 24,
          ),
        ],
      ),
    );
  }
}
