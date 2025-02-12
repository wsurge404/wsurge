
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:wsurge/core/config/data/config_option_data_providers.dart';
import 'package:wsurge/core/connection/data/connection_platform_source.dart';
import 'package:wsurge/core/connection/data/connection_repository.dart';
import 'package:wsurge/core/directories/directories_provider.dart';
import 'package:wsurge/core/profiles/data/profile_data_providers.dart';
import 'package:wsurge/singbox/singbox_service_provider.dart';

part 'connection_data_providers.g.dart';

@Riverpod(keepAlive: true)
ConnectionRepository connectionRepository(
  Ref ref,
) {
  return ConnectionRepositoryImpl(
    directories: ref.watch(appDirectoriesProvider).requireValue,
    configOptionRepository: ref.watch(configOptionRepositoryProvider),
    singbox: ref.watch(singboxServiceProvider),
    platformSource: ConnectionPlatformSourceImpl(),
    profilePathResolver: ref.watch(profilePathResolverProvider),
  );
}
