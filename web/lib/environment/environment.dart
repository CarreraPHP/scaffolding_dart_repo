import 'local.dart';
import 'prod.dart';
import 'configuration_interface.dart';

class Environment {
  static String environment = "__LOCAL__";

  static AbstractConfiguration config = (environment == '__LOCAL__'
      ? LocalConfiguration
      : ProdConfiguration) as AbstractConfiguration;
}
