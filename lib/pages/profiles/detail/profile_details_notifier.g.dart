// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_details_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$profileDetailsNotifierHash() =>
    r'e1d912843a5892431e681f19ff58016344df8481';

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

abstract class _$ProfileDetailsNotifier
    extends BuildlessAutoDisposeAsyncNotifier<ProfileDetailsState> {
  late final String id;
  late final String? url;
  late final String? profileName;

  FutureOr<ProfileDetailsState> build(
    String id, {
    String? url,
    String? profileName,
  });
}

/// See also [ProfileDetailsNotifier].
@ProviderFor(ProfileDetailsNotifier)
const profileDetailsNotifierProvider = ProfileDetailsNotifierFamily();

/// See also [ProfileDetailsNotifier].
class ProfileDetailsNotifierFamily
    extends Family<AsyncValue<ProfileDetailsState>> {
  /// See also [ProfileDetailsNotifier].
  const ProfileDetailsNotifierFamily();

  /// See also [ProfileDetailsNotifier].
  ProfileDetailsNotifierProvider call(
    String id, {
    String? url,
    String? profileName,
  }) {
    return ProfileDetailsNotifierProvider(
      id,
      url: url,
      profileName: profileName,
    );
  }

  @override
  ProfileDetailsNotifierProvider getProviderOverride(
    covariant ProfileDetailsNotifierProvider provider,
  ) {
    return call(
      provider.id,
      url: provider.url,
      profileName: provider.profileName,
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
  String? get name => r'profileDetailsNotifierProvider';
}

/// See also [ProfileDetailsNotifier].
class ProfileDetailsNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProfileDetailsNotifier,
        ProfileDetailsState> {
  /// See also [ProfileDetailsNotifier].
  ProfileDetailsNotifierProvider(
    String id, {
    String? url,
    String? profileName,
  }) : this._internal(
          () => ProfileDetailsNotifier()
            ..id = id
            ..url = url
            ..profileName = profileName,
          from: profileDetailsNotifierProvider,
          name: r'profileDetailsNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$profileDetailsNotifierHash,
          dependencies: ProfileDetailsNotifierFamily._dependencies,
          allTransitiveDependencies:
              ProfileDetailsNotifierFamily._allTransitiveDependencies,
          id: id,
          url: url,
          profileName: profileName,
        );

  ProfileDetailsNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
    required this.url,
    required this.profileName,
  }) : super.internal();

  final String id;
  final String? url;
  final String? profileName;

  @override
  FutureOr<ProfileDetailsState> runNotifierBuild(
    covariant ProfileDetailsNotifier notifier,
  ) {
    return notifier.build(
      id,
      url: url,
      profileName: profileName,
    );
  }

  @override
  Override overrideWith(ProfileDetailsNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProfileDetailsNotifierProvider._internal(
        () => create()
          ..id = id
          ..url = url
          ..profileName = profileName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
        url: url,
        profileName: profileName,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ProfileDetailsNotifier,
      ProfileDetailsState> createElement() {
    return _ProfileDetailsNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProfileDetailsNotifierProvider &&
        other.id == id &&
        other.url == url &&
        other.profileName == profileName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);
    hash = _SystemHash.combine(hash, profileName.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProfileDetailsNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<ProfileDetailsState> {
  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `url` of this provider.
  String? get url;

  /// The parameter `profileName` of this provider.
  String? get profileName;
}

class _ProfileDetailsNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ProfileDetailsNotifier,
        ProfileDetailsState> with ProfileDetailsNotifierRef {
  _ProfileDetailsNotifierProviderElement(super.provider);

  @override
  String get id => (origin as ProfileDetailsNotifierProvider).id;
  @override
  String? get url => (origin as ProfileDetailsNotifierProvider).url;
  @override
  String? get profileName =>
      (origin as ProfileDetailsNotifierProvider).profileName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
