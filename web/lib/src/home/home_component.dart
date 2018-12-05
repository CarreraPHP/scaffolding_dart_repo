import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/model/menu/menu.dart';

@Component(
    selector: 'scf-home',
    templateUrl: 'home_component.html',
    styleUrls: [
      'package:angular_components/app_layout/layout.scss.css',
    ],
    directives: [
      // materialDirectives,
      DeferredContentDirective,
      MaterialPersistentDrawerDirective,
      MaterialToggleComponent,
      MaterialListComponent,
      MaterialListItemComponent,
      MaterialIconComponent,
      MaterialButtonComponent,
      MaterialTemporaryDrawerComponent,
      MaterialRippleComponent,
      MaterialMenuComponent
    ])
class HomeComponent implements OnInit {
  MenuModel<MenuItem> userAccountMenuList;
  HomeComponent();

  @override
  ngOnInit() {}
}
