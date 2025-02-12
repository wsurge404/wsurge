import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/config/data/config_option_data_providers.dart';
import 'package:wsurge/core/database/database_provider.dart';
import 'package:wsurge/core/directories/directories_provider.dart';
import 'package:wsurge/core/profiles/data/profile_data_source.dart';
import 'package:wsurge/core/profiles/data/profile_path_resolver.dart';
import 'package:wsurge/core/profiles/data/profile_repository.dart';
import 'package:wsurge/singbox/singbox_service_provider.dart';

import '../../http_client/http_client_provider.dart';

part 'profile_data_providers.g.dart';

@Riverpod(keepAlive: true)
Future<ProfileRepository> profileRepository(Ref ref) async {
  final repo = ProfileRepositoryImpl(
    profileDataSource: ref.watch(profileDataSourceProvider),
    profilePathResolver: ref.watch(profilePathResolverProvider),
    singbox: ref.watch(singboxServiceProvider),
    configOptionRepository: ref.watch(configOptionRepositoryProvider),
    httpClient: ref.watch(httpClientProvider),
  );
  await repo.init().getOrElse((l) => throw l).run();
  return repo;
}

@Riverpod(keepAlive: true)
ProfileDataSource profileDataSource(Ref ref) {
  return ProfileDao(ref.watch(appDatabaseProvider));
}

@Riverpod(keepAlive: true)
ProfilePathResolver profilePathResolver(Ref ref) {
  return ProfilePathResolver(
    ref.watch(appDirectoriesProvider).requireValue.workingDir,
  );
}
