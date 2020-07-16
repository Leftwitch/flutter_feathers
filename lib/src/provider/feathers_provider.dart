import '../../flutter_feathers.dart';
import '../feathers.dart';

abstract class FeathersProvider {
  Feathers app;

  void initialize(Feathers app) {
    this.app = app;
  }

  FeathersService service(String name);
}
