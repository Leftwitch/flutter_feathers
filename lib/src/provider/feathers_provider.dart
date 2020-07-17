import 'dart:convert';

import 'package:flutter/widgets.dart';

import '../../flutter_feathers.dart';
import '../feathers.dart';

abstract class FeathersProvider {
  Feathers app;

  dynamic __currentAuthentication;

  @protected
  StoreAccessToken storeAccessTokenMethod;

  @protected
  ReadAccessToken readAccessTokenMethod;

  @protected
  String authServiceName;

  get currentAuthentication => __currentAuthentication;

  set currentAuthentication(val) {
    __currentAuthentication = val;
    storeAccessTokenMethod(jsonEncode(val));
  }

  void initialize(Feathers app) {
    this.app = app;
  }

  void initializeAuthentication(StoreAccessToken storeMethod,
      ReadAccessToken readMethod, String authServiceName) {
    this.storeAccessTokenMethod = storeMethod;
    this.readAccessTokenMethod = readMethod;
    this.authServiceName = authServiceName;
  }

  FeathersService service(String name);

  Future<dynamic> authenticate(Map<String, dynamic> data);
  Future<dynamic> reAuthenticate();
  Future<void> logout();

  dynamic getCurrentAuthentication() => currentAuthentication;
}
