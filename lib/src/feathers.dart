import 'package:feathers_core/src/provider/feathers_provider.dart';
import 'package:feathers_core/src/service/feathers_service.dart';

class Feathers {
  FeathersProvider _feathersProvider;

  void configure(FeathersProvider provider) {
    this._feathersProvider = provider;
    this._feathersProvider.initialize(this);
  }

  FeathersService service(String name) => this._feathersProvider.service(name);
}
