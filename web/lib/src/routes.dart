import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'landing/landing_component.template.dart' as landPage;
import 'home/home_component.template.dart' as homePage;

export 'route_paths.dart';

class Routes {
  static final root = RouteDefinition.redirect(
    path: '',
    redirectTo: RoutePaths.index.toUrl(),
  );

  static final index = RouteDefinition(
    routePath: RoutePaths.index,
    component: landPage.LandingComponentNgFactory,
    // useAsDefault: true,
  );

  static final register = RouteDefinition(
    routePath: RoutePaths.register,
    component: landPage.LandingComponentNgFactory,
  );

  static final login = RouteDefinition(
    routePath: RoutePaths.login,
    component: landPage.LandingComponentNgFactory,
  );

  static final home = RouteDefinition(
    routePath: RoutePaths.login,
    component: homePage.HomeComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    root,
    index,
    register,
    login,
    home,
  ];
}
