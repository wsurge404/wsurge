// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'singbox_config_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SingboxConfigOption _$SingboxConfigOptionFromJson(Map<String, dynamic> json) {
  return _SingboxConfigOption.fromJson(json);
}

/// @nodoc
mixin _$SingboxConfigOption {
  String get region => throw _privateConstructorUsedError;
  bool get blockAds => throw _privateConstructorUsedError;
  bool get useXrayCoreWhenPossible => throw _privateConstructorUsedError;
  bool get executeConfigAsIs => throw _privateConstructorUsedError;
  LogLevel get logLevel => throw _privateConstructorUsedError;
  bool get resolveDestination => throw _privateConstructorUsedError;
  IPv6Mode get ipv6Mode => throw _privateConstructorUsedError;
  String get remoteDnsAddress => throw _privateConstructorUsedError;
  DomainStrategy get remoteDnsDomainStrategy =>
      throw _privateConstructorUsedError;
  String get directDnsAddress => throw _privateConstructorUsedError;
  DomainStrategy get directDnsDomainStrategy =>
      throw _privateConstructorUsedError;
  int get mixedPort => throw _privateConstructorUsedError;
  int get tproxyPort => throw _privateConstructorUsedError;
  int get localDnsPort => throw _privateConstructorUsedError;
  TunImplementation get tunImplementation => throw _privateConstructorUsedError;
  int get mtu => throw _privateConstructorUsedError;
  bool get strictRoute => throw _privateConstructorUsedError;
  String get connectionTestUrl =>
      throw _privateConstructorUsedError; // @IntervalInSecondsConverter()
  Duration get urlTestInterval => throw _privateConstructorUsedError;
  bool get enableClashApi => throw _privateConstructorUsedError;
  int get clashApiPort => throw _privateConstructorUsedError;
  bool get enableTun => throw _privateConstructorUsedError;
  bool get enableTunService => throw _privateConstructorUsedError;
  bool get setSystemProxy => throw _privateConstructorUsedError;
  bool get bypassLan => throw _privateConstructorUsedError;
  bool get allowConnectionFromLan => throw _privateConstructorUsedError;
  bool get enableFakeDns => throw _privateConstructorUsedError;
  bool get enableDnsRouting => throw _privateConstructorUsedError;
  bool get independentDnsCache =>
      throw _privateConstructorUsedError; // required String geoipPath,
// required String geositePath,
  List<SingboxRule> get rules => throw _privateConstructorUsedError;
  MitmOption get mitmOptions => throw _privateConstructorUsedError;

  /// Serializes this SingboxConfigOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SingboxConfigOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingboxConfigOptionCopyWith<SingboxConfigOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingboxConfigOptionCopyWith<$Res> {
  factory $SingboxConfigOptionCopyWith(
          SingboxConfigOption value, $Res Function(SingboxConfigOption) then) =
      _$SingboxConfigOptionCopyWithImpl<$Res, SingboxConfigOption>;
  @useResult
  $Res call(
      {String region,
      bool blockAds,
      bool useXrayCoreWhenPossible,
      bool executeConfigAsIs,
      LogLevel logLevel,
      bool resolveDestination,
      IPv6Mode ipv6Mode,
      String remoteDnsAddress,
      DomainStrategy remoteDnsDomainStrategy,
      String directDnsAddress,
      DomainStrategy directDnsDomainStrategy,
      int mixedPort,
      int tproxyPort,
      int localDnsPort,
      TunImplementation tunImplementation,
      int mtu,
      bool strictRoute,
      String connectionTestUrl,
      Duration urlTestInterval,
      bool enableClashApi,
      int clashApiPort,
      bool enableTun,
      bool enableTunService,
      bool setSystemProxy,
      bool bypassLan,
      bool allowConnectionFromLan,
      bool enableFakeDns,
      bool enableDnsRouting,
      bool independentDnsCache,
      List<SingboxRule> rules,
      MitmOption mitmOptions});

  $MitmOptionCopyWith<$Res> get mitmOptions;
}

/// @nodoc
class _$SingboxConfigOptionCopyWithImpl<$Res, $Val extends SingboxConfigOption>
    implements $SingboxConfigOptionCopyWith<$Res> {
  _$SingboxConfigOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SingboxConfigOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? blockAds = null,
    Object? useXrayCoreWhenPossible = null,
    Object? executeConfigAsIs = null,
    Object? logLevel = null,
    Object? resolveDestination = null,
    Object? ipv6Mode = null,
    Object? remoteDnsAddress = null,
    Object? remoteDnsDomainStrategy = null,
    Object? directDnsAddress = null,
    Object? directDnsDomainStrategy = null,
    Object? mixedPort = null,
    Object? tproxyPort = null,
    Object? localDnsPort = null,
    Object? tunImplementation = null,
    Object? mtu = null,
    Object? strictRoute = null,
    Object? connectionTestUrl = null,
    Object? urlTestInterval = null,
    Object? enableClashApi = null,
    Object? clashApiPort = null,
    Object? enableTun = null,
    Object? enableTunService = null,
    Object? setSystemProxy = null,
    Object? bypassLan = null,
    Object? allowConnectionFromLan = null,
    Object? enableFakeDns = null,
    Object? enableDnsRouting = null,
    Object? independentDnsCache = null,
    Object? rules = null,
    Object? mitmOptions = null,
  }) {
    return _then(_value.copyWith(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      blockAds: null == blockAds
          ? _value.blockAds
          : blockAds // ignore: cast_nullable_to_non_nullable
              as bool,
      useXrayCoreWhenPossible: null == useXrayCoreWhenPossible
          ? _value.useXrayCoreWhenPossible
          : useXrayCoreWhenPossible // ignore: cast_nullable_to_non_nullable
              as bool,
      executeConfigAsIs: null == executeConfigAsIs
          ? _value.executeConfigAsIs
          : executeConfigAsIs // ignore: cast_nullable_to_non_nullable
              as bool,
      logLevel: null == logLevel
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      resolveDestination: null == resolveDestination
          ? _value.resolveDestination
          : resolveDestination // ignore: cast_nullable_to_non_nullable
              as bool,
      ipv6Mode: null == ipv6Mode
          ? _value.ipv6Mode
          : ipv6Mode // ignore: cast_nullable_to_non_nullable
              as IPv6Mode,
      remoteDnsAddress: null == remoteDnsAddress
          ? _value.remoteDnsAddress
          : remoteDnsAddress // ignore: cast_nullable_to_non_nullable
              as String,
      remoteDnsDomainStrategy: null == remoteDnsDomainStrategy
          ? _value.remoteDnsDomainStrategy
          : remoteDnsDomainStrategy // ignore: cast_nullable_to_non_nullable
              as DomainStrategy,
      directDnsAddress: null == directDnsAddress
          ? _value.directDnsAddress
          : directDnsAddress // ignore: cast_nullable_to_non_nullable
              as String,
      directDnsDomainStrategy: null == directDnsDomainStrategy
          ? _value.directDnsDomainStrategy
          : directDnsDomainStrategy // ignore: cast_nullable_to_non_nullable
              as DomainStrategy,
      mixedPort: null == mixedPort
          ? _value.mixedPort
          : mixedPort // ignore: cast_nullable_to_non_nullable
              as int,
      tproxyPort: null == tproxyPort
          ? _value.tproxyPort
          : tproxyPort // ignore: cast_nullable_to_non_nullable
              as int,
      localDnsPort: null == localDnsPort
          ? _value.localDnsPort
          : localDnsPort // ignore: cast_nullable_to_non_nullable
              as int,
      tunImplementation: null == tunImplementation
          ? _value.tunImplementation
          : tunImplementation // ignore: cast_nullable_to_non_nullable
              as TunImplementation,
      mtu: null == mtu
          ? _value.mtu
          : mtu // ignore: cast_nullable_to_non_nullable
              as int,
      strictRoute: null == strictRoute
          ? _value.strictRoute
          : strictRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionTestUrl: null == connectionTestUrl
          ? _value.connectionTestUrl
          : connectionTestUrl // ignore: cast_nullable_to_non_nullable
              as String,
      urlTestInterval: null == urlTestInterval
          ? _value.urlTestInterval
          : urlTestInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      enableClashApi: null == enableClashApi
          ? _value.enableClashApi
          : enableClashApi // ignore: cast_nullable_to_non_nullable
              as bool,
      clashApiPort: null == clashApiPort
          ? _value.clashApiPort
          : clashApiPort // ignore: cast_nullable_to_non_nullable
              as int,
      enableTun: null == enableTun
          ? _value.enableTun
          : enableTun // ignore: cast_nullable_to_non_nullable
              as bool,
      enableTunService: null == enableTunService
          ? _value.enableTunService
          : enableTunService // ignore: cast_nullable_to_non_nullable
              as bool,
      setSystemProxy: null == setSystemProxy
          ? _value.setSystemProxy
          : setSystemProxy // ignore: cast_nullable_to_non_nullable
              as bool,
      bypassLan: null == bypassLan
          ? _value.bypassLan
          : bypassLan // ignore: cast_nullable_to_non_nullable
              as bool,
      allowConnectionFromLan: null == allowConnectionFromLan
          ? _value.allowConnectionFromLan
          : allowConnectionFromLan // ignore: cast_nullable_to_non_nullable
              as bool,
      enableFakeDns: null == enableFakeDns
          ? _value.enableFakeDns
          : enableFakeDns // ignore: cast_nullable_to_non_nullable
              as bool,
      enableDnsRouting: null == enableDnsRouting
          ? _value.enableDnsRouting
          : enableDnsRouting // ignore: cast_nullable_to_non_nullable
              as bool,
      independentDnsCache: null == independentDnsCache
          ? _value.independentDnsCache
          : independentDnsCache // ignore: cast_nullable_to_non_nullable
              as bool,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<SingboxRule>,
      mitmOptions: null == mitmOptions
          ? _value.mitmOptions
          : mitmOptions // ignore: cast_nullable_to_non_nullable
              as MitmOption,
    ) as $Val);
  }

  /// Create a copy of SingboxConfigOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MitmOptionCopyWith<$Res> get mitmOptions {
    return $MitmOptionCopyWith<$Res>(_value.mitmOptions, (value) {
      return _then(_value.copyWith(mitmOptions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SingboxConfigOptionImplCopyWith<$Res>
    implements $SingboxConfigOptionCopyWith<$Res> {
  factory _$$SingboxConfigOptionImplCopyWith(_$SingboxConfigOptionImpl value,
          $Res Function(_$SingboxConfigOptionImpl) then) =
      __$$SingboxConfigOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String region,
      bool blockAds,
      bool useXrayCoreWhenPossible,
      bool executeConfigAsIs,
      LogLevel logLevel,
      bool resolveDestination,
      IPv6Mode ipv6Mode,
      String remoteDnsAddress,
      DomainStrategy remoteDnsDomainStrategy,
      String directDnsAddress,
      DomainStrategy directDnsDomainStrategy,
      int mixedPort,
      int tproxyPort,
      int localDnsPort,
      TunImplementation tunImplementation,
      int mtu,
      bool strictRoute,
      String connectionTestUrl,
      Duration urlTestInterval,
      bool enableClashApi,
      int clashApiPort,
      bool enableTun,
      bool enableTunService,
      bool setSystemProxy,
      bool bypassLan,
      bool allowConnectionFromLan,
      bool enableFakeDns,
      bool enableDnsRouting,
      bool independentDnsCache,
      List<SingboxRule> rules,
      MitmOption mitmOptions});

  @override
  $MitmOptionCopyWith<$Res> get mitmOptions;
}

/// @nodoc
class __$$SingboxConfigOptionImplCopyWithImpl<$Res>
    extends _$SingboxConfigOptionCopyWithImpl<$Res, _$SingboxConfigOptionImpl>
    implements _$$SingboxConfigOptionImplCopyWith<$Res> {
  __$$SingboxConfigOptionImplCopyWithImpl(_$SingboxConfigOptionImpl _value,
      $Res Function(_$SingboxConfigOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SingboxConfigOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? region = null,
    Object? blockAds = null,
    Object? useXrayCoreWhenPossible = null,
    Object? executeConfigAsIs = null,
    Object? logLevel = null,
    Object? resolveDestination = null,
    Object? ipv6Mode = null,
    Object? remoteDnsAddress = null,
    Object? remoteDnsDomainStrategy = null,
    Object? directDnsAddress = null,
    Object? directDnsDomainStrategy = null,
    Object? mixedPort = null,
    Object? tproxyPort = null,
    Object? localDnsPort = null,
    Object? tunImplementation = null,
    Object? mtu = null,
    Object? strictRoute = null,
    Object? connectionTestUrl = null,
    Object? urlTestInterval = null,
    Object? enableClashApi = null,
    Object? clashApiPort = null,
    Object? enableTun = null,
    Object? enableTunService = null,
    Object? setSystemProxy = null,
    Object? bypassLan = null,
    Object? allowConnectionFromLan = null,
    Object? enableFakeDns = null,
    Object? enableDnsRouting = null,
    Object? independentDnsCache = null,
    Object? rules = null,
    Object? mitmOptions = null,
  }) {
    return _then(_$SingboxConfigOptionImpl(
      region: null == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String,
      blockAds: null == blockAds
          ? _value.blockAds
          : blockAds // ignore: cast_nullable_to_non_nullable
              as bool,
      useXrayCoreWhenPossible: null == useXrayCoreWhenPossible
          ? _value.useXrayCoreWhenPossible
          : useXrayCoreWhenPossible // ignore: cast_nullable_to_non_nullable
              as bool,
      executeConfigAsIs: null == executeConfigAsIs
          ? _value.executeConfigAsIs
          : executeConfigAsIs // ignore: cast_nullable_to_non_nullable
              as bool,
      logLevel: null == logLevel
          ? _value.logLevel
          : logLevel // ignore: cast_nullable_to_non_nullable
              as LogLevel,
      resolveDestination: null == resolveDestination
          ? _value.resolveDestination
          : resolveDestination // ignore: cast_nullable_to_non_nullable
              as bool,
      ipv6Mode: null == ipv6Mode
          ? _value.ipv6Mode
          : ipv6Mode // ignore: cast_nullable_to_non_nullable
              as IPv6Mode,
      remoteDnsAddress: null == remoteDnsAddress
          ? _value.remoteDnsAddress
          : remoteDnsAddress // ignore: cast_nullable_to_non_nullable
              as String,
      remoteDnsDomainStrategy: null == remoteDnsDomainStrategy
          ? _value.remoteDnsDomainStrategy
          : remoteDnsDomainStrategy // ignore: cast_nullable_to_non_nullable
              as DomainStrategy,
      directDnsAddress: null == directDnsAddress
          ? _value.directDnsAddress
          : directDnsAddress // ignore: cast_nullable_to_non_nullable
              as String,
      directDnsDomainStrategy: null == directDnsDomainStrategy
          ? _value.directDnsDomainStrategy
          : directDnsDomainStrategy // ignore: cast_nullable_to_non_nullable
              as DomainStrategy,
      mixedPort: null == mixedPort
          ? _value.mixedPort
          : mixedPort // ignore: cast_nullable_to_non_nullable
              as int,
      tproxyPort: null == tproxyPort
          ? _value.tproxyPort
          : tproxyPort // ignore: cast_nullable_to_non_nullable
              as int,
      localDnsPort: null == localDnsPort
          ? _value.localDnsPort
          : localDnsPort // ignore: cast_nullable_to_non_nullable
              as int,
      tunImplementation: null == tunImplementation
          ? _value.tunImplementation
          : tunImplementation // ignore: cast_nullable_to_non_nullable
              as TunImplementation,
      mtu: null == mtu
          ? _value.mtu
          : mtu // ignore: cast_nullable_to_non_nullable
              as int,
      strictRoute: null == strictRoute
          ? _value.strictRoute
          : strictRoute // ignore: cast_nullable_to_non_nullable
              as bool,
      connectionTestUrl: null == connectionTestUrl
          ? _value.connectionTestUrl
          : connectionTestUrl // ignore: cast_nullable_to_non_nullable
              as String,
      urlTestInterval: null == urlTestInterval
          ? _value.urlTestInterval
          : urlTestInterval // ignore: cast_nullable_to_non_nullable
              as Duration,
      enableClashApi: null == enableClashApi
          ? _value.enableClashApi
          : enableClashApi // ignore: cast_nullable_to_non_nullable
              as bool,
      clashApiPort: null == clashApiPort
          ? _value.clashApiPort
          : clashApiPort // ignore: cast_nullable_to_non_nullable
              as int,
      enableTun: null == enableTun
          ? _value.enableTun
          : enableTun // ignore: cast_nullable_to_non_nullable
              as bool,
      enableTunService: null == enableTunService
          ? _value.enableTunService
          : enableTunService // ignore: cast_nullable_to_non_nullable
              as bool,
      setSystemProxy: null == setSystemProxy
          ? _value.setSystemProxy
          : setSystemProxy // ignore: cast_nullable_to_non_nullable
              as bool,
      bypassLan: null == bypassLan
          ? _value.bypassLan
          : bypassLan // ignore: cast_nullable_to_non_nullable
              as bool,
      allowConnectionFromLan: null == allowConnectionFromLan
          ? _value.allowConnectionFromLan
          : allowConnectionFromLan // ignore: cast_nullable_to_non_nullable
              as bool,
      enableFakeDns: null == enableFakeDns
          ? _value.enableFakeDns
          : enableFakeDns // ignore: cast_nullable_to_non_nullable
              as bool,
      enableDnsRouting: null == enableDnsRouting
          ? _value.enableDnsRouting
          : enableDnsRouting // ignore: cast_nullable_to_non_nullable
              as bool,
      independentDnsCache: null == independentDnsCache
          ? _value.independentDnsCache
          : independentDnsCache // ignore: cast_nullable_to_non_nullable
              as bool,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<SingboxRule>,
      mitmOptions: null == mitmOptions
          ? _value.mitmOptions
          : mitmOptions // ignore: cast_nullable_to_non_nullable
              as MitmOption,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$SingboxConfigOptionImpl extends _SingboxConfigOption {
  const _$SingboxConfigOptionImpl(
      {required this.region,
      required this.blockAds,
      required this.useXrayCoreWhenPossible,
      required this.executeConfigAsIs,
      required this.logLevel,
      required this.resolveDestination,
      required this.ipv6Mode,
      required this.remoteDnsAddress,
      required this.remoteDnsDomainStrategy,
      required this.directDnsAddress,
      required this.directDnsDomainStrategy,
      required this.mixedPort,
      required this.tproxyPort,
      required this.localDnsPort,
      required this.tunImplementation,
      required this.mtu,
      required this.strictRoute,
      required this.connectionTestUrl,
      required this.urlTestInterval,
      required this.enableClashApi,
      required this.clashApiPort,
      required this.enableTun,
      required this.enableTunService,
      required this.setSystemProxy,
      required this.bypassLan,
      required this.allowConnectionFromLan,
      required this.enableFakeDns,
      required this.enableDnsRouting,
      required this.independentDnsCache,
      required final List<SingboxRule> rules,
      required this.mitmOptions})
      : _rules = rules,
        super._();

  factory _$SingboxConfigOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingboxConfigOptionImplFromJson(json);

  @override
  final String region;
  @override
  final bool blockAds;
  @override
  final bool useXrayCoreWhenPossible;
  @override
  final bool executeConfigAsIs;
  @override
  final LogLevel logLevel;
  @override
  final bool resolveDestination;
  @override
  final IPv6Mode ipv6Mode;
  @override
  final String remoteDnsAddress;
  @override
  final DomainStrategy remoteDnsDomainStrategy;
  @override
  final String directDnsAddress;
  @override
  final DomainStrategy directDnsDomainStrategy;
  @override
  final int mixedPort;
  @override
  final int tproxyPort;
  @override
  final int localDnsPort;
  @override
  final TunImplementation tunImplementation;
  @override
  final int mtu;
  @override
  final bool strictRoute;
  @override
  final String connectionTestUrl;
// @IntervalInSecondsConverter()
  @override
  final Duration urlTestInterval;
  @override
  final bool enableClashApi;
  @override
  final int clashApiPort;
  @override
  final bool enableTun;
  @override
  final bool enableTunService;
  @override
  final bool setSystemProxy;
  @override
  final bool bypassLan;
  @override
  final bool allowConnectionFromLan;
  @override
  final bool enableFakeDns;
  @override
  final bool enableDnsRouting;
  @override
  final bool independentDnsCache;
// required String geoipPath,
// required String geositePath,
  final List<SingboxRule> _rules;
// required String geoipPath,
// required String geositePath,
  @override
  List<SingboxRule> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  @override
  final MitmOption mitmOptions;

  @override
  String toString() {
    return 'SingboxConfigOption(region: $region, blockAds: $blockAds, useXrayCoreWhenPossible: $useXrayCoreWhenPossible, executeConfigAsIs: $executeConfigAsIs, logLevel: $logLevel, resolveDestination: $resolveDestination, ipv6Mode: $ipv6Mode, remoteDnsAddress: $remoteDnsAddress, remoteDnsDomainStrategy: $remoteDnsDomainStrategy, directDnsAddress: $directDnsAddress, directDnsDomainStrategy: $directDnsDomainStrategy, mixedPort: $mixedPort, tproxyPort: $tproxyPort, localDnsPort: $localDnsPort, tunImplementation: $tunImplementation, mtu: $mtu, strictRoute: $strictRoute, connectionTestUrl: $connectionTestUrl, urlTestInterval: $urlTestInterval, enableClashApi: $enableClashApi, clashApiPort: $clashApiPort, enableTun: $enableTun, enableTunService: $enableTunService, setSystemProxy: $setSystemProxy, bypassLan: $bypassLan, allowConnectionFromLan: $allowConnectionFromLan, enableFakeDns: $enableFakeDns, enableDnsRouting: $enableDnsRouting, independentDnsCache: $independentDnsCache, rules: $rules, mitmOptions: $mitmOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingboxConfigOptionImpl &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.blockAds, blockAds) ||
                other.blockAds == blockAds) &&
            (identical(other.useXrayCoreWhenPossible, useXrayCoreWhenPossible) ||
                other.useXrayCoreWhenPossible == useXrayCoreWhenPossible) &&
            (identical(other.executeConfigAsIs, executeConfigAsIs) ||
                other.executeConfigAsIs == executeConfigAsIs) &&
            (identical(other.logLevel, logLevel) ||
                other.logLevel == logLevel) &&
            (identical(other.resolveDestination, resolveDestination) ||
                other.resolveDestination == resolveDestination) &&
            (identical(other.ipv6Mode, ipv6Mode) ||
                other.ipv6Mode == ipv6Mode) &&
            (identical(other.remoteDnsAddress, remoteDnsAddress) ||
                other.remoteDnsAddress == remoteDnsAddress) &&
            (identical(other.remoteDnsDomainStrategy, remoteDnsDomainStrategy) ||
                other.remoteDnsDomainStrategy == remoteDnsDomainStrategy) &&
            (identical(other.directDnsAddress, directDnsAddress) ||
                other.directDnsAddress == directDnsAddress) &&
            (identical(other.directDnsDomainStrategy, directDnsDomainStrategy) ||
                other.directDnsDomainStrategy == directDnsDomainStrategy) &&
            (identical(other.mixedPort, mixedPort) ||
                other.mixedPort == mixedPort) &&
            (identical(other.tproxyPort, tproxyPort) ||
                other.tproxyPort == tproxyPort) &&
            (identical(other.localDnsPort, localDnsPort) ||
                other.localDnsPort == localDnsPort) &&
            (identical(other.tunImplementation, tunImplementation) ||
                other.tunImplementation == tunImplementation) &&
            (identical(other.mtu, mtu) || other.mtu == mtu) &&
            (identical(other.strictRoute, strictRoute) ||
                other.strictRoute == strictRoute) &&
            (identical(other.connectionTestUrl, connectionTestUrl) ||
                other.connectionTestUrl == connectionTestUrl) &&
            (identical(other.urlTestInterval, urlTestInterval) ||
                other.urlTestInterval == urlTestInterval) &&
            (identical(other.enableClashApi, enableClashApi) ||
                other.enableClashApi == enableClashApi) &&
            (identical(other.clashApiPort, clashApiPort) ||
                other.clashApiPort == clashApiPort) &&
            (identical(other.enableTun, enableTun) ||
                other.enableTun == enableTun) &&
            (identical(other.enableTunService, enableTunService) ||
                other.enableTunService == enableTunService) &&
            (identical(other.setSystemProxy, setSystemProxy) ||
                other.setSystemProxy == setSystemProxy) &&
            (identical(other.bypassLan, bypassLan) ||
                other.bypassLan == bypassLan) &&
            (identical(other.allowConnectionFromLan, allowConnectionFromLan) ||
                other.allowConnectionFromLan == allowConnectionFromLan) &&
            (identical(other.enableFakeDns, enableFakeDns) ||
                other.enableFakeDns == enableFakeDns) &&
            (identical(other.enableDnsRouting, enableDnsRouting) ||
                other.enableDnsRouting == enableDnsRouting) &&
            (identical(other.independentDnsCache, independentDnsCache) ||
                other.independentDnsCache == independentDnsCache) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            (identical(other.mitmOptions, mitmOptions) ||
                other.mitmOptions == mitmOptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        region,
        blockAds,
        useXrayCoreWhenPossible,
        executeConfigAsIs,
        logLevel,
        resolveDestination,
        ipv6Mode,
        remoteDnsAddress,
        remoteDnsDomainStrategy,
        directDnsAddress,
        directDnsDomainStrategy,
        mixedPort,
        tproxyPort,
        localDnsPort,
        tunImplementation,
        mtu,
        strictRoute,
        connectionTestUrl,
        urlTestInterval,
        enableClashApi,
        clashApiPort,
        enableTun,
        enableTunService,
        setSystemProxy,
        bypassLan,
        allowConnectionFromLan,
        enableFakeDns,
        enableDnsRouting,
        independentDnsCache,
        const DeepCollectionEquality().hash(_rules),
        mitmOptions
      ]);

  /// Create a copy of SingboxConfigOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingboxConfigOptionImplCopyWith<_$SingboxConfigOptionImpl> get copyWith =>
      __$$SingboxConfigOptionImplCopyWithImpl<_$SingboxConfigOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingboxConfigOptionImplToJson(
      this,
    );
  }
}

abstract class _SingboxConfigOption extends SingboxConfigOption {
  const factory _SingboxConfigOption(
      {required final String region,
      required final bool blockAds,
      required final bool useXrayCoreWhenPossible,
      required final bool executeConfigAsIs,
      required final LogLevel logLevel,
      required final bool resolveDestination,
      required final IPv6Mode ipv6Mode,
      required final String remoteDnsAddress,
      required final DomainStrategy remoteDnsDomainStrategy,
      required final String directDnsAddress,
      required final DomainStrategy directDnsDomainStrategy,
      required final int mixedPort,
      required final int tproxyPort,
      required final int localDnsPort,
      required final TunImplementation tunImplementation,
      required final int mtu,
      required final bool strictRoute,
      required final String connectionTestUrl,
      required final Duration urlTestInterval,
      required final bool enableClashApi,
      required final int clashApiPort,
      required final bool enableTun,
      required final bool enableTunService,
      required final bool setSystemProxy,
      required final bool bypassLan,
      required final bool allowConnectionFromLan,
      required final bool enableFakeDns,
      required final bool enableDnsRouting,
      required final bool independentDnsCache,
      required final List<SingboxRule> rules,
      required final MitmOption mitmOptions}) = _$SingboxConfigOptionImpl;
  const _SingboxConfigOption._() : super._();

  factory _SingboxConfigOption.fromJson(Map<String, dynamic> json) =
      _$SingboxConfigOptionImpl.fromJson;

  @override
  String get region;
  @override
  bool get blockAds;
  @override
  bool get useXrayCoreWhenPossible;
  @override
  bool get executeConfigAsIs;
  @override
  LogLevel get logLevel;
  @override
  bool get resolveDestination;
  @override
  IPv6Mode get ipv6Mode;
  @override
  String get remoteDnsAddress;
  @override
  DomainStrategy get remoteDnsDomainStrategy;
  @override
  String get directDnsAddress;
  @override
  DomainStrategy get directDnsDomainStrategy;
  @override
  int get mixedPort;
  @override
  int get tproxyPort;
  @override
  int get localDnsPort;
  @override
  TunImplementation get tunImplementation;
  @override
  int get mtu;
  @override
  bool get strictRoute;
  @override
  String get connectionTestUrl; // @IntervalInSecondsConverter()
  @override
  Duration get urlTestInterval;
  @override
  bool get enableClashApi;
  @override
  int get clashApiPort;
  @override
  bool get enableTun;
  @override
  bool get enableTunService;
  @override
  bool get setSystemProxy;
  @override
  bool get bypassLan;
  @override
  bool get allowConnectionFromLan;
  @override
  bool get enableFakeDns;
  @override
  bool get enableDnsRouting;
  @override
  bool get independentDnsCache; // required String geoipPath,
// required String geositePath,
  @override
  List<SingboxRule> get rules;
  @override
  MitmOption get mitmOptions;

  /// Create a copy of SingboxConfigOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingboxConfigOptionImplCopyWith<_$SingboxConfigOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MitmOption _$MitmOptionFromJson(Map<String, dynamic> json) {
  return _MitmOption.fromJson(json);
}

/// @nodoc
mixin _$MitmOption {
  bool get enable => throw _privateConstructorUsedError;
  String get certFile => throw _privateConstructorUsedError;
  String get keyFile => throw _privateConstructorUsedError;
  List<String> get hosts => throw _privateConstructorUsedError;
  List<MitmRuleOption> get rules => throw _privateConstructorUsedError;

  /// Serializes this MitmOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MitmOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MitmOptionCopyWith<MitmOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MitmOptionCopyWith<$Res> {
  factory $MitmOptionCopyWith(
          MitmOption value, $Res Function(MitmOption) then) =
      _$MitmOptionCopyWithImpl<$Res, MitmOption>;
  @useResult
  $Res call(
      {bool enable,
      String certFile,
      String keyFile,
      List<String> hosts,
      List<MitmRuleOption> rules});
}

/// @nodoc
class _$MitmOptionCopyWithImpl<$Res, $Val extends MitmOption>
    implements $MitmOptionCopyWith<$Res> {
  _$MitmOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MitmOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? certFile = null,
    Object? keyFile = null,
    Object? hosts = null,
    Object? rules = null,
  }) {
    return _then(_value.copyWith(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      certFile: null == certFile
          ? _value.certFile
          : certFile // ignore: cast_nullable_to_non_nullable
              as String,
      keyFile: null == keyFile
          ? _value.keyFile
          : keyFile // ignore: cast_nullable_to_non_nullable
              as String,
      hosts: null == hosts
          ? _value.hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rules: null == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<MitmRuleOption>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MitmOptionImplCopyWith<$Res>
    implements $MitmOptionCopyWith<$Res> {
  factory _$$MitmOptionImplCopyWith(
          _$MitmOptionImpl value, $Res Function(_$MitmOptionImpl) then) =
      __$$MitmOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool enable,
      String certFile,
      String keyFile,
      List<String> hosts,
      List<MitmRuleOption> rules});
}

/// @nodoc
class __$$MitmOptionImplCopyWithImpl<$Res>
    extends _$MitmOptionCopyWithImpl<$Res, _$MitmOptionImpl>
    implements _$$MitmOptionImplCopyWith<$Res> {
  __$$MitmOptionImplCopyWithImpl(
      _$MitmOptionImpl _value, $Res Function(_$MitmOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MitmOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enable = null,
    Object? certFile = null,
    Object? keyFile = null,
    Object? hosts = null,
    Object? rules = null,
  }) {
    return _then(_$MitmOptionImpl(
      enable: null == enable
          ? _value.enable
          : enable // ignore: cast_nullable_to_non_nullable
              as bool,
      certFile: null == certFile
          ? _value.certFile
          : certFile // ignore: cast_nullable_to_non_nullable
              as String,
      keyFile: null == keyFile
          ? _value.keyFile
          : keyFile // ignore: cast_nullable_to_non_nullable
              as String,
      hosts: null == hosts
          ? _value._hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rules: null == rules
          ? _value._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<MitmRuleOption>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$MitmOptionImpl implements _MitmOption {
  const _$MitmOptionImpl(
      {required this.enable,
      required this.certFile,
      required this.keyFile,
      required final List<String> hosts,
      required final List<MitmRuleOption> rules})
      : _hosts = hosts,
        _rules = rules;

  factory _$MitmOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MitmOptionImplFromJson(json);

  @override
  final bool enable;
  @override
  final String certFile;
  @override
  final String keyFile;
  final List<String> _hosts;
  @override
  List<String> get hosts {
    if (_hosts is EqualUnmodifiableListView) return _hosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hosts);
  }

  final List<MitmRuleOption> _rules;
  @override
  List<MitmRuleOption> get rules {
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rules);
  }

  @override
  String toString() {
    return 'MitmOption(enable: $enable, certFile: $certFile, keyFile: $keyFile, hosts: $hosts, rules: $rules)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MitmOptionImpl &&
            (identical(other.enable, enable) || other.enable == enable) &&
            (identical(other.certFile, certFile) ||
                other.certFile == certFile) &&
            (identical(other.keyFile, keyFile) || other.keyFile == keyFile) &&
            const DeepCollectionEquality().equals(other._hosts, _hosts) &&
            const DeepCollectionEquality().equals(other._rules, _rules));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      enable,
      certFile,
      keyFile,
      const DeepCollectionEquality().hash(_hosts),
      const DeepCollectionEquality().hash(_rules));

  /// Create a copy of MitmOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MitmOptionImplCopyWith<_$MitmOptionImpl> get copyWith =>
      __$$MitmOptionImplCopyWithImpl<_$MitmOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MitmOptionImplToJson(
      this,
    );
  }
}

abstract class _MitmOption implements MitmOption {
  const factory _MitmOption(
      {required final bool enable,
      required final String certFile,
      required final String keyFile,
      required final List<String> hosts,
      required final List<MitmRuleOption> rules}) = _$MitmOptionImpl;

  factory _MitmOption.fromJson(Map<String, dynamic> json) =
      _$MitmOptionImpl.fromJson;

  @override
  bool get enable;
  @override
  String get certFile;
  @override
  String get keyFile;
  @override
  List<String> get hosts;
  @override
  List<MitmRuleOption> get rules;

  /// Create a copy of MitmOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MitmOptionImplCopyWith<_$MitmOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MitmRuleOption _$MitmRuleOptionFromJson(Map<String, dynamic> json) {
  return _MitmRuleOption.fromJson(json);
}

/// @nodoc
mixin _$MitmRuleOption {
  String get urlRegex => throw _privateConstructorUsedError;
  String get ruleType => throw _privateConstructorUsedError;
  String get scriptsPath => throw _privateConstructorUsedError;
  String get replaceContent => throw _privateConstructorUsedError;

  /// Serializes this MitmRuleOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MitmRuleOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MitmRuleOptionCopyWith<MitmRuleOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MitmRuleOptionCopyWith<$Res> {
  factory $MitmRuleOptionCopyWith(
          MitmRuleOption value, $Res Function(MitmRuleOption) then) =
      _$MitmRuleOptionCopyWithImpl<$Res, MitmRuleOption>;
  @useResult
  $Res call(
      {String urlRegex,
      String ruleType,
      String scriptsPath,
      String replaceContent});
}

/// @nodoc
class _$MitmRuleOptionCopyWithImpl<$Res, $Val extends MitmRuleOption>
    implements $MitmRuleOptionCopyWith<$Res> {
  _$MitmRuleOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MitmRuleOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlRegex = null,
    Object? ruleType = null,
    Object? scriptsPath = null,
    Object? replaceContent = null,
  }) {
    return _then(_value.copyWith(
      urlRegex: null == urlRegex
          ? _value.urlRegex
          : urlRegex // ignore: cast_nullable_to_non_nullable
              as String,
      ruleType: null == ruleType
          ? _value.ruleType
          : ruleType // ignore: cast_nullable_to_non_nullable
              as String,
      scriptsPath: null == scriptsPath
          ? _value.scriptsPath
          : scriptsPath // ignore: cast_nullable_to_non_nullable
              as String,
      replaceContent: null == replaceContent
          ? _value.replaceContent
          : replaceContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MitmRuleOptionImplCopyWith<$Res>
    implements $MitmRuleOptionCopyWith<$Res> {
  factory _$$MitmRuleOptionImplCopyWith(_$MitmRuleOptionImpl value,
          $Res Function(_$MitmRuleOptionImpl) then) =
      __$$MitmRuleOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String urlRegex,
      String ruleType,
      String scriptsPath,
      String replaceContent});
}

/// @nodoc
class __$$MitmRuleOptionImplCopyWithImpl<$Res>
    extends _$MitmRuleOptionCopyWithImpl<$Res, _$MitmRuleOptionImpl>
    implements _$$MitmRuleOptionImplCopyWith<$Res> {
  __$$MitmRuleOptionImplCopyWithImpl(
      _$MitmRuleOptionImpl _value, $Res Function(_$MitmRuleOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MitmRuleOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlRegex = null,
    Object? ruleType = null,
    Object? scriptsPath = null,
    Object? replaceContent = null,
  }) {
    return _then(_$MitmRuleOptionImpl(
      urlRegex: null == urlRegex
          ? _value.urlRegex
          : urlRegex // ignore: cast_nullable_to_non_nullable
              as String,
      ruleType: null == ruleType
          ? _value.ruleType
          : ruleType // ignore: cast_nullable_to_non_nullable
              as String,
      scriptsPath: null == scriptsPath
          ? _value.scriptsPath
          : scriptsPath // ignore: cast_nullable_to_non_nullable
              as String,
      replaceContent: null == replaceContent
          ? _value.replaceContent
          : replaceContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.kebab)
class _$MitmRuleOptionImpl implements _MitmRuleOption {
  const _$MitmRuleOptionImpl(
      {required this.urlRegex,
      required this.ruleType,
      required this.scriptsPath,
      required this.replaceContent});

  factory _$MitmRuleOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MitmRuleOptionImplFromJson(json);

  @override
  final String urlRegex;
  @override
  final String ruleType;
  @override
  final String scriptsPath;
  @override
  final String replaceContent;

  @override
  String toString() {
    return 'MitmRuleOption(urlRegex: $urlRegex, ruleType: $ruleType, scriptsPath: $scriptsPath, replaceContent: $replaceContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MitmRuleOptionImpl &&
            (identical(other.urlRegex, urlRegex) ||
                other.urlRegex == urlRegex) &&
            (identical(other.ruleType, ruleType) ||
                other.ruleType == ruleType) &&
            (identical(other.scriptsPath, scriptsPath) ||
                other.scriptsPath == scriptsPath) &&
            (identical(other.replaceContent, replaceContent) ||
                other.replaceContent == replaceContent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, urlRegex, ruleType, scriptsPath, replaceContent);

  /// Create a copy of MitmRuleOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MitmRuleOptionImplCopyWith<_$MitmRuleOptionImpl> get copyWith =>
      __$$MitmRuleOptionImplCopyWithImpl<_$MitmRuleOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MitmRuleOptionImplToJson(
      this,
    );
  }
}

abstract class _MitmRuleOption implements MitmRuleOption {
  const factory _MitmRuleOption(
      {required final String urlRegex,
      required final String ruleType,
      required final String scriptsPath,
      required final String replaceContent}) = _$MitmRuleOptionImpl;

  factory _MitmRuleOption.fromJson(Map<String, dynamic> json) =
      _$MitmRuleOptionImpl.fromJson;

  @override
  String get urlRegex;
  @override
  String get ruleType;
  @override
  String get scriptsPath;
  @override
  String get replaceContent;

  /// Create a copy of MitmRuleOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MitmRuleOptionImplCopyWith<_$MitmRuleOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
