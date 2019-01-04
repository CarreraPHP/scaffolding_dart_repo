import 'configuration_interface.dart';

class LocalConfiguration implements AbstractConfiguration {
  final ServerConfiguration server = ServerConfiguration(
    host: 'localhost',
    port: 8888,
    isSecure: false,
    endPoint: null
  );

  LocalConfiguration._();
}