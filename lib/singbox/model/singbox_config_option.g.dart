// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singbox_config_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingboxConfigOptionImpl _$$SingboxConfigOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$SingboxConfigOptionImpl(
      region: json['region'] as String,
      blockAds: json['block-ads'] as bool,
      useXrayCoreWhenPossible: json['use-xray-core-when-possible'] as bool,
      executeConfigAsIs: json['execute-config-as-is'] as bool,
      logLevel: $enumDecode(_$LogLevelEnumMap, json['log-level']),
      resolveDestination: json['resolve-destination'] as bool,
      ipv6Mode: $enumDecode(_$IPv6ModeEnumMap, json['ipv6-mode']),
      remoteDnsAddress: json['remote-dns-address'] as String,
      remoteDnsDomainStrategy: $enumDecode(
          _$DomainStrategyEnumMap, json['remote-dns-domain-strategy']),
      directDnsAddress: json['direct-dns-address'] as String,
      directDnsDomainStrategy: $enumDecode(
          _$DomainStrategyEnumMap, json['direct-dns-domain-strategy']),
      mixedPort: (json['mixed-port'] as num).toInt(),
      tproxyPort: (json['tproxy-port'] as num).toInt(),
      localDnsPort: (json['local-dns-port'] as num).toInt(),
      tunImplementation:
          $enumDecode(_$TunImplementationEnumMap, json['tun-implementation']),
      mtu: (json['mtu'] as num).toInt(),
      strictRoute: json['strict-route'] as bool,
      connectionTestUrl: json['connection-test-url'] as String,
      urlTestInterval:
          Duration(microseconds: (json['url-test-interval'] as num).toInt()),
      enableClashApi: json['enable-clash-api'] as bool,
      clashApiPort: (json['clash-api-port'] as num).toInt(),
      enableTun: json['enable-tun'] as bool,
      enableTunService: json['enable-tun-service'] as bool,
      setSystemProxy: json['set-system-proxy'] as bool,
      bypassLan: json['bypass-lan'] as bool,
      allowConnectionFromLan: json['allow-connection-from-lan'] as bool,
      enableFakeDns: json['enable-fake-dns'] as bool,
      enableDnsRouting: json['enable-dns-routing'] as bool,
      independentDnsCache: json['independent-dns-cache'] as bool,
      rules: (json['rules'] as List<dynamic>)
          .map((e) => SingboxRule.fromJson(e as Map<String, dynamic>))
          .toList(),
      mitmOptions:
          MitmOption.fromJson(json['mitm-options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SingboxConfigOptionImplToJson(
        _$SingboxConfigOptionImpl instance) =>
    <String, dynamic>{
      'region': instance.region,
      'block-ads': instance.blockAds,
      'use-xray-core-when-possible': instance.useXrayCoreWhenPossible,
      'execute-config-as-is': instance.executeConfigAsIs,
      'log-level': _$LogLevelEnumMap[instance.logLevel]!,
      'resolve-destination': instance.resolveDestination,
      'ipv6-mode': _$IPv6ModeEnumMap[instance.ipv6Mode]!,
      'remote-dns-address': instance.remoteDnsAddress,
      'remote-dns-domain-strategy':
          _$DomainStrategyEnumMap[instance.remoteDnsDomainStrategy]!,
      'direct-dns-address': instance.directDnsAddress,
      'direct-dns-domain-strategy':
          _$DomainStrategyEnumMap[instance.directDnsDomainStrategy]!,
      'mixed-port': instance.mixedPort,
      'tproxy-port': instance.tproxyPort,
      'local-dns-port': instance.localDnsPort,
      'tun-implementation':
          _$TunImplementationEnumMap[instance.tunImplementation]!,
      'mtu': instance.mtu,
      'strict-route': instance.strictRoute,
      'connection-test-url': instance.connectionTestUrl,
      'url-test-interval': instance.urlTestInterval.inMicroseconds,
      'enable-clash-api': instance.enableClashApi,
      'clash-api-port': instance.clashApiPort,
      'enable-tun': instance.enableTun,
      'enable-tun-service': instance.enableTunService,
      'set-system-proxy': instance.setSystemProxy,
      'bypass-lan': instance.bypassLan,
      'allow-connection-from-lan': instance.allowConnectionFromLan,
      'enable-fake-dns': instance.enableFakeDns,
      'enable-dns-routing': instance.enableDnsRouting,
      'independent-dns-cache': instance.independentDnsCache,
      'rules': instance.rules.map((e) => e.toJson()).toList(),
      'mitm-options': instance.mitmOptions.toJson(),
    };

const _$LogLevelEnumMap = {
  LogLevel.trace: 'trace',
  LogLevel.debug: 'debug',
  LogLevel.info: 'info',
  LogLevel.warn: 'warn',
  LogLevel.error: 'error',
  LogLevel.fatal: 'fatal',
  LogLevel.panic: 'panic',
};

const _$IPv6ModeEnumMap = {
  IPv6Mode.disable: 'ipv4_only',
  IPv6Mode.enable: 'prefer_ipv4',
  IPv6Mode.prefer: 'prefer_ipv6',
  IPv6Mode.only: 'ipv6_only',
};

const _$DomainStrategyEnumMap = {
  DomainStrategy.auto: '',
  DomainStrategy.preferIpv6: 'prefer_ipv6',
  DomainStrategy.preferIpv4: 'prefer_ipv4',
  DomainStrategy.ipv4Only: 'ipv4_only',
  DomainStrategy.ipv6Only: 'ipv6_only',
};

const _$TunImplementationEnumMap = {
  TunImplementation.mixed: 'mixed',
  TunImplementation.system: 'system',
  TunImplementation.gvisor: 'gvisor',
};

_$MitmOptionImpl _$$MitmOptionImplFromJson(Map<String, dynamic> json) =>
    _$MitmOptionImpl(
      enable: json['enable'] as bool,
      certFile: json['cert-file'] as String,
      keyFile: json['key-file'] as String,
      hosts: (json['hosts'] as List<dynamic>).map((e) => e as String).toList(),
      rules: (json['rules'] as List<dynamic>)
          .map((e) => MitmRuleOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MitmOptionImplToJson(_$MitmOptionImpl instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'cert-file': instance.certFile,
      'key-file': instance.keyFile,
      'hosts': instance.hosts,
      'rules': instance.rules.map((e) => e.toJson()).toList(),
    };

_$MitmRuleOptionImpl _$$MitmRuleOptionImplFromJson(Map<String, dynamic> json) =>
    _$MitmRuleOptionImpl(
      urlRegex: json['url-regex'] as String,
      ruleType: json['rule-type'] as String,
      scriptsPath: json['scripts-path'] as String,
      replaceContent: json['replace-content'] as String,
    );

Map<String, dynamic> _$$MitmRuleOptionImplToJson(
        _$MitmRuleOptionImpl instance) =>
    <String, dynamic>{
      'url-regex': instance.urlRegex,
      'rule-type': instance.ruleType,
      'scripts-path': instance.scriptsPath,
      'replace-content': instance.replaceContent,
    };
