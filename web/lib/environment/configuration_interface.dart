class ServerConfiguration {
  String _host;
  int _port;
  bool _isSecure;
  String _endPoint;

  ServerConfiguration({
    String host, 
    int port = null,
    bool isSecure = true,
    String endPoint = '/api'
    })
      : _host = host,
        _port = port,
        _isSecure = isSecure,
        _endPoint = endPoint;

  String get hostName {
    return '${_host}';
  }

  int get portNo {
    return _port;
  }

  String get transferProtocol {
    return "http${_isSecure ? 's' : ''}";
  }

  String get endPoint {
    return _endPoint;
  }

  String get endPointUrl {
    String port = portNo == null ? '' : ':${portNo}';
    String urlEnd = endPoint == null ? '' : endPoint;
    return "${transferProtocol}://${hostName}${port}${urlEnd}/";
  }

  String get apiEndPoint => endPointUrl;
}

abstract class AbstractConfiguration {
  final ServerConfiguration server = ServerConfiguration();

  AbstractConfiguration._();
}
