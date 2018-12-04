import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    selector: 'scf-home',
    templateUrl: 'home_component.html',
    styleUrls: [
      'package:angular_components/app_layout/layout.scss.css',
    ],
    directives: [
      materialDirectives
    ])
class HomeComponent implements OnInit {
  HomeComponent();

  @override
  ngOnInit() {}
}
