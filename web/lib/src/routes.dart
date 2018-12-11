import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'landing/landing_component.template.dart' as landing;

export 'route_paths.dart';

class Routes {
  static final index = RouteDefinition(
    routePath: RoutePaths.index,
    component: landing.LandingComponentNgFactory,
    useAsDefault: true,
  );

  static final all = <RouteDefinition>[
    RouteDefinition.redirect(
      path: '',
      redirectTo: RoutePaths.index.toUrl(),
    ),
    index
  ];
}
