// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$addProfileHash() => r'd1d36968425c6c7655d6d2f07325b857fe39a937';

/// See also [AddProfile].
@ProviderFor(AddProfile)
final addProfileProvider =
    AutoDisposeNotifierProvider<AddProfile, AsyncValue<Unit?>>.internal(
  AddProfile.new,
  name: r'addProfileProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$addProfileHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AddProfile = AutoDisposeNotifier<AsyncValue<Unit?>>;
String _$updateProfileHash() => r'3078f9a70ea1aea87d2c358f1afd0631dc759a83';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$UpdateProfile
    extends BuildlessAutoDisposeNotifier<AsyncValue<Unit?>> {
  late final String id;

  AsyncValue<Unit?> build(
    String id,
  );
}

/// See also [UpdateProfile].
@ProviderFor(UpdateProfile)
const updateProfileProvider = UpdateProfileFamily();

/// See also [UpdateProfile].
class UpdateProfileFamily extends Family<AsyncValue<Unit?>> {
  /// See also [UpdateProfile].
  const UpdateProfileFamily();

  /// See also [UpdateProfile].
  UpdateProfileProvider call(
    String id,
  ) {
    return UpdateProfileProvider(
      id,
    );
  }

  @override
  UpdateProfileProvider getProviderOverride(
    covariant UpdateProfileProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateProfileProvider';
}

/// See also [UpdateProfile].
class UpdateProfileProvider
    extends AutoDisposeNotifierProviderImpl<UpdateProfile, AsyncValue<Unit?>> {
  /// See also [UpdateProfile].
  UpdateProfileProvider(
    String id,
  ) : this._internal(
          () => UpdateProfile()..id = id,
          from: updateProfileProvider,
          name: r'updateProfileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateProfileHash,
          dependencies: UpdateProfileFamily._dependencies,
          allTransitiveDependencies:
              UpdateProfileFamily._allTransitiveDependencies,
          id: id,
        );

  UpdateProfileProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  AsyncValue<Unit?> runNotifierBuild(
    covariant UpdateProfile notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(UpdateProfile Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdateProfileProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<UpdateProfile, AsyncValue<Unit?>>
      createElement() {
    return _UpdateProfileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateProfileProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateProfileRef on AutoDisposeNotifierProviderRef<AsyncValue<Unit?>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _UpdateProfileProviderElement
    extends AutoDisposeNotifierProviderElement<UpdateProfile, AsyncValue<Unit?>>
    with UpdateProfileRef {
  _UpdateProfileProviderElement(super.provider);

  @override
  String get id => (origin as UpdateProfileProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
