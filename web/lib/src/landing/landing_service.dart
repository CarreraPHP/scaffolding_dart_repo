import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

class LandingService {
  
  final Client _http;

  LandingService(Client this._http);

  register ({
      String username,
      String password
    }) async {
    final response = await _http.post("/register", body: {
      "username": username,
      "password": password
    });
  }
}
