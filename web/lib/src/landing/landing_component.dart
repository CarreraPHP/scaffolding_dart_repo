import 'dart:html' show window;
import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular_components/focus/focus.dart';
import 'package:angular_components/material_input/material_input.dart';
import 'package:angular_components/material_tooltip/material_tooltip.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_forms/angular_forms.dart';

import 'landing_service.dart';

class ScfValidators {
  static ValidatorFn passwordConfirmation(
      String pControlName, String pControlConfirmationName) {
    return (AbstractControl controlGroup) {
      AbstractControlGroup g = controlGroup as AbstractControlGroup;
      String v = g.controls[pControlName].value;
      String pv = g.controls[pControlConfirmationName].value;

      return v != pv
          ? {'password': 'Password Confirmation Failed, re-enter confirmation'}
          : null;
    };
  }
}

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
  providers: [ClassProvider(LandingService)]
  // encapsulation: ViewEncapsulation.None,
)
class LandingComponent {
  ControlGroup registerForm;
  LandingService _landingService;

  LandingComponent(this._landingService) {
    registerForm = FormBuilder.controlGroup(
      {
        'username': [
          '',
          Validators.compose([
            Validators.required,
            Validators.minLength(3),
          ])
        ],
        'email': [
          '',
          Validators.compose([
            Validators.required,
            Validators.pattern(
                '([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})'),
          ])
        ],
        'password': [
          '',
          Validators.compose([
            Validators.required,
            Validators.pattern(
                '(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@\$%^&*-]).{8,12}'),
          ])
        ],
        'passwordConfirmation': [
          '',
          Validators.compose([Validators.required])
        ],
      },
      validator: ScfValidators.passwordConfirmation('password', 'passwordConfirmation'),
    );
  }

  doRegister(e) async {
    Map<String, dynamic> response = await _landingService.register(username: "", password: "");
    
    window.console.log("gets called when submitted....");
    window.console.log({
      'event': e,
      'response': response
    });
  }
  
  doReset(e) {
    registerForm.reset();
  }

  Map<String, dynamic> get value {
    return registerForm.value;
  }

  Map<String, dynamic> get errors {
    return registerForm.errors;
  }
}
