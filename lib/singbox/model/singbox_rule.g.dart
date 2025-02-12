// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singbox_rule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingboxRuleImpl _$$SingboxRuleImplFromJson(Map<String, dynamic> json) =>
    _$SingboxRuleImpl(
      ruleSetUrl: json['rule-set-url'] as String?,
      domains: json['domains'] as String?,
      ip: json['ip'] as String?,
      port: json['port'] as String?,
      protocol: json['protocol'] as String?,
      network: $enumDecodeNullable(_$RuleNetworkEnumMap, json['network']) ??
          RuleNetwork.tcpAndUdp,
      outbound: $enumDecodeNullable(_$RuleOutboundEnumMap, json['outbound']) ??
          RuleOutbound.proxy,
    );

Map<String, dynamic> _$$SingboxRuleImplToJson(_$SingboxRuleImpl instance) =>
    <String, dynamic>{
      'rule-set-url': instance.ruleSetUrl,
      'domains': instance.domains,
      'ip': instance.ip,
      'port': instance.port,
      'protocol': instance.protocol,
      'network': _$RuleNetworkEnumMap[instance.network]!,
      'outbound': _$RuleOutboundEnumMap[instance.outbound]!,
    };

const _$RuleNetworkEnumMap = {
  RuleNetwork.tcpAndUdp: '',
  RuleNetwork.tcp: 'tcp',
  RuleNetwork.udp: 'udp',
};

const _$RuleOutboundEnumMap = {
  RuleOutbound.proxy: 'proxy',
  RuleOutbound.bypass: 'bypass',
  RuleOutbound.block: 'block',
};
