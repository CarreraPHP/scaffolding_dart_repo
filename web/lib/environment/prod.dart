import 'configuration_interface.dart';

class ProdConfiguration implements AbstractConfiguration {
  final ServerConfiguration server = ServerConfiguration(
    host: 'localhost',
    isSecure: false,
    endPoint: null
  );

  ProdConfiguration._();
}