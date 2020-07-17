library flutter_feathers;

export 'src/feathers.dart';
export 'src/provider/feathers_provider.dart';
export 'src/service/feathers_service.dart';

typedef StoreAccessToken = void Function(String);
typedef ReadAccessToken = Future<String> Function();
