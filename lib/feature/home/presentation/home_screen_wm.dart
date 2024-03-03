import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pulse/core/di/dependencies.dart';
import 'package:pulse/feature/home/presentation/home_screen.dart';
import 'package:pulse/feature/home/presentation/home_screen_model.dart';

abstract interface class IHomeScreenWidgetModel
    extends WidgetModel<HomeScreenWidget, IHomeScreenModel> {
  IHomeScreenWidgetModel(super.model);
  void onNavigationItemTap(int value, TabsRouter tabsRouter);
}

final class HomeScreenWidgetModel
    extends WidgetModel<HomeScreenWidget, IHomeScreenModel>
    implements IHomeScreenWidgetModel {
  HomeScreenWidgetModel(super.model);

  @override
  void onNavigationItemTap(int value, TabsRouter tabsRouter) {
    if (tabsRouter.activeIndex != value) {
      tabsRouter.setActiveIndex(value);
      return;
    }

    final childRouter = tabsRouter.childControllers[value];

    if (childRouter is StackRouter) {
      childRouter.popUntilRoot();
    }
  }
}

IHomeScreenWidgetModel homeScreenWidgetModelFactory(BuildContext context) {
  final model = context.read<Dependencies>().homeModel;
  return HomeScreenWidgetModel(model);
}
