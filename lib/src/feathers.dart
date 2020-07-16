import 'package:flutter_feathers/flutter_feathers.dart';

class Feathers {
  FeathersProvider _feathersProvider;

  void configure(FeathersProvider provider) {
    this._feathersProvider = provider;
    this._feathersProvider.initialize(this);
  }

  FeathersService service(String name) => this._feathersProvider.service(name);
}
