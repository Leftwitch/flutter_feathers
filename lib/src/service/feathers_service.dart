import 'package:feathers_core/src/provider/feathers_provider.dart';

abstract class FeathersService {
  String serviceName;
  FeathersProvider feathersProvider;

  FeathersService(this.serviceName, this.feathersProvider);

  Future<List<dynamic>> find({Map<String, String> query = const {}});
  Future<dynamic> get(String id);
  Future<void> create(dynamic object);
  Future<void> update(String id, dynamic object);
  Future<void> patch(String id, dynamic object);
  Future<void> remove(String id);
  Stream<dynamic> on(String eventName);
  Future<dynamic> once(String eventname);
}
