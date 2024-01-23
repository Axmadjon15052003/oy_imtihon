import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final servisLocator = GetIt.I;

Future<void> servisInjektor() async {
  servisLocator.registerLazySingletonAsync(
    () async => await Dio(),
  );
}
