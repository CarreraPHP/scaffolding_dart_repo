import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/home/home_component.dart';
import 'src/landing/landing_component.dart';

import 'src/routes.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: [
    HomeComponent,
    LandingComponent,
    routerDirectives
  ],
  exports: [
    RoutePaths,
    Routes,
  ],
  providers: []
)
class AppComponent {
  // Nothing here yet. All logic is in TodoListComponent.
}
