import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wsurge/pages/log/model/log_level.dart';
import 'package:wsurge/singbox/model/singbox_config_enum.dart';
import 'package:wsurge/singbox/model/singbox_rule.dart';

part 'singbox_config_option.freezed.dart';

part 'singbox_config_option.g.dart';

@freezed
class SingboxConfigOption with _$SingboxConfigOption {
  const SingboxConfigOption._();

  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory SingboxConfigOption({
    required String region,
    required bool blockAds,
    required bool useXrayCoreWhenPossible,
    required bool executeConfigAsIs,
    required LogLevel logLevel,
    required bool resolveDestination,
    required IPv6Mode ipv6Mode,
    required String remoteDnsAddress,
    required DomainStrategy remoteDnsDomainStrategy,
    required String directDnsAddress,
    required DomainStrategy directDnsDomainStrategy,
    required int mixedPort,
    required int tproxyPort,
    required int localDnsPort,
    required TunImplementation tunImplementation,
    required int mtu,
    required bool strictRoute,
    required String connectionTestUrl,
    // @IntervalInSecondsConverter()
    required Duration urlTestInterval,
    required bool enableClashApi,
    required int clashApiPort,
    required bool enableTun,
    required bool enableTunService,
    required bool setSystemProxy,
    required bool bypassLan,
    required bool allowConnectionFromLan,
    required bool enableFakeDns,
    required bool enableDnsRouting,
    required bool independentDnsCache,
    // required String geoipPath,
    // required String geositePath,
    required List<SingboxRule> rules,
    required MitmOption mitmOptions,
    // required SingboxTlsTricks tlsTricks,
    // required SingboxWarpOption warp,
    // required SingboxWarpOption warp2,
  }) = _SingboxConfigOption;

  String format() {
    const encoder = JsonEncoder.withIndent('  ');
    return encoder.convert(toJson());
  }

  factory SingboxConfigOption.fromJson(Map<String, dynamic> json) =>
      _$SingboxConfigOptionFromJson(json);
}

@freezed
class MitmOption with _$MitmOption {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory MitmOption(
      {required bool enable,
      required String certFile,
      required String keyFile,
      required List<String> hosts,
      required List<MitmRuleOption> rules}) = _MitmOption;

  factory MitmOption.fromJson(Map<String, dynamic> json) =>
      _$MitmOptionFromJson(json);
}

@freezed
class MitmRuleOption with _$MitmRuleOption {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory MitmRuleOption({
    required String urlRegex,
    required String ruleType,
    required String scriptsPath,
    required String replaceContent,
  }) = _MitmRuleOption;

  factory MitmRuleOption.fromJson(Map<String, dynamic> json) =>
      _$MitmRuleOptionFromJson(json);
}
//
// @freezed
// class SingboxTlsTricks with _$SingboxTlsTricks {
//   @JsonSerializable(fieldRename: FieldRename.kebab)
//   const factory SingboxTlsTricks({
//     required bool enableFragment,
//     @OptionalRangeJsonConverter() required OptionalRange fragmentSize,
//     @OptionalRangeJsonConverter() required OptionalRange fragmentSleep,
//     required bool mixedSniCase,
//     required bool enablePadding,
//     @OptionalRangeJsonConverter() required OptionalRange paddingSize,
//   }) = _SingboxTlsTricks;
//
//   factory SingboxTlsTricks.fromJson(Map<String, dynamic> json) => _$SingboxTlsTricksFromJson(json);
// }
