import 'dart:html' show window;

import 'package:angular/angular.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_tooltip/material_tooltip.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_forms/angular_forms.dart';

@Component(
  selector: 'scf-landing',
  templateUrl: 'landing_component.html',
  directives: [
    formDirectives,
    materialInputDirectives,
    AutoFocusDirective,
    MaterialPaperTooltipComponent,
    MaterialButtonComponent,
    MaterialTooltipTargetDirective,
  ],
  pipes: [JsonPipe],
  styleUrls: [
    'package:angular_components/css/mdc_web/card/mdc-card.scss.css',
    'landing_component.scss.css'
  ],
  preserveWhitespace: true,
  // encapsulation: ViewEncapsulation.None,
)
class LandingComponent {
  ControlGroup registerForm;
  // NgFormModel fd;

  LandingComponent() {
    registerForm = FormBuilder.controlGroup({
      'username': ['', Validators.required],
      'email': ['', Validators.required],
      'password': ['', Validators.required],
      'passwordConfirmation': ['', Validators.required],
    });
  }

  doRegister(e) {
    // rf.isValid
    window.console.log("gets called when submitted....");
    window.console.log(e);
    print("gets called when submitted....");
  }

  Map<String, dynamic> get value {
    return registerForm.value;
  }
}
