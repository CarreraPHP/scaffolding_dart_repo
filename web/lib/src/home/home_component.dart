// import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:angular_components/laminate/popup/module.dart' show popupBindings;

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
    ],
    providers: [popupBindings]
  )
class HomeComponent implements OnInit {
  MenuModel<MenuItem> userAccountMenuList;
  HomeComponent();

  @override
  ngOnInit() {
    this.userAccountMenuList = _loadUserAccountMenu();
  }

  MenuModel<MenuItem> _loadUserAccountMenu() {
    return MenuModel([
      MenuItemGroup([
        MenuItem("Profile"),
        MenuItem("Setting"),
      ]),
      MenuItemGroup([
        MenuItem("Signout"),
      ]),
    ]);
  }
}
