import 'package:feathers_core/src/service/feathers_service.dart';

import '../feathers.dart';

abstract class FeathersProvider {
  Feathers app;

  void initialize(Feathers app) {
    this.app = app;
  }

  FeathersService service(String name);
}
