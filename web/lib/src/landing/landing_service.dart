import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

import '../../environment/environment.dart' show Environment;

class LandingService {
  
  final Client _http;

  String baseUrl = Environment.config.server.endPointUrl;

  LandingService(this._http);

  Future<Map<String, dynamic>> register ({
      String username,
      String password
    }) async {

    final Response response = await _http.post("${baseUrl}register", body: {
      "username": username,
      "password": password
    });

    return json.decode(response.body);
  }
}
