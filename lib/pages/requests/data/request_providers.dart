import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/pages/requests/data/request_repository.dart';
import 'package:wsurge/singbox/singbox_service_provider.dart';

part 'request_providers.g.dart';

@Riverpod(keepAlive: true)
Future<RequestRepository> requestRepository(Ref ref) async {
  final repo = RequestRepositoryImpl(
    singbox: ref.watch(singboxServiceProvider),
  );
  return repo;
}
