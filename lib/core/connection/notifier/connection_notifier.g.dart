// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$serviceRunningHash() => r'a97e995bb4fbe4867c72838c305d8eac53128d41';

/// See also [serviceRunning].
@ProviderFor(serviceRunning)
final serviceRunningProvider = FutureProvider<bool>.internal(
  serviceRunning,
  name: r'serviceRunningProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$serviceRunningHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef ServiceRunningRef = FutureProviderRef<bool>;
String _$connectionNotifierHash() =>
    r'3fd6c476ae65a404c40f04855083d62525fc3c0f';

/// See also [ConnectionNotifier].
@ProviderFor(ConnectionNotifier)
final connectionNotifierProvider =
    StreamNotifierProvider<ConnectionNotifier, ConnectionStatus>.internal(
  ConnectionNotifier.new,
  name: r'connectionNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$connectionNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ConnectionNotifier = StreamNotifier<ConnectionStatus>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
