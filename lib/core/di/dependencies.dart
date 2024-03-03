import 'package:pulse/feature/home/presentation/home_screen_model.dart';

/// A class for some dependencies that cannot be directly injected in container
/// Cannot be implemented nor extended
final class Dependencies {
  final IHomeScreenModel homeModel;
  const Dependencies({
    required this.homeModel,
  });
}
