import 'package:flutter_feathers/flutter_feathers.dart';

abstract class FeathersService {
  String serviceName;
  FeathersProvider feathersProvider;

  FeathersService(this.serviceName, this.feathersProvider);

  Future<List<dynamic>> find({Map<String, String> query = const {}});
  Future<dynamic> get(String id);
  Future<dynamic> create(dynamic object);
  Future<dynamic> update(String id, dynamic object);
  Future<dynamic> patch(String id, dynamic object);
  Future<dynamic> remove(String id);
  Stream<dynamic> on(String eventName);
  Future<dynamic> once(String eventname);
}
