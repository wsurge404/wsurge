import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/proxy/repo/proxy_repository.dart';
import 'package:wsurge/singbox/singbox_service_provider.dart';

part 'proxy_data_providers.g.dart';

@Riverpod(keepAlive: true)
ProxyRepository proxyRepository(Ref ref) {
  return ProxyRepositoryImpl(
    singbox: ref.watch(singboxServiceProvider),
    // client: ref.watch(httpClientProvider),
  );
}
