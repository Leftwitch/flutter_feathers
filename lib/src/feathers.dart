import 'package:flutter_feathers/flutter_feathers.dart';

class Feathers {
  FeathersProvider _feathersProvider;

  void configure(FeathersProvider provider) {
    this._feathersProvider = provider;
    this._feathersProvider.initialize(this);
  }

  void configureAuthentication(
          StoreAccessToken storeMethod, ReadAccessToken readMethod,
          {String authServiceName = 'authentication'}) =>
      this
          ._feathersProvider
          .initializeAuthentication(storeMethod, readMethod, authServiceName);

  Future<dynamic> authenticate(Map<String, dynamic> data) =>
      this._feathersProvider.authenticate(data);
  Future<dynamic> reAuthenticate() => this._feathersProvider.reAuthenticate();

  Future<void> logout() => this._feathersProvider.logout();

  dynamic getCurrentAuthentication() =>
      this._feathersProvider.getCurrentAuthentication();

  FeathersService service(String name) => this._feathersProvider.service(name);
}
