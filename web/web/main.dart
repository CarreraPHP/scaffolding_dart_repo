import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:web/app_component.template.dart' as ng;

import 'main.template.dart' as self;

const useHashLS = true;
@GenerateInjector(
  routerProvidersHash,
)
final InjectorFactory injector = self.injector$Injector;

void main() {
  runApp(ng.AppComponentNgFactory, createInjector: injector);
}
