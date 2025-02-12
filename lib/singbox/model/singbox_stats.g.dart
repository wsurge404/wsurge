// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'singbox_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SingboxStatsImpl _$$SingboxStatsImplFromJson(Map<String, dynamic> json) =>
    _$SingboxStatsImpl(
      connectionsIn: (json['connections-in'] as num).toInt(),
      connectionsOut: (json['connections-out'] as num).toInt(),
      uplink: (json['uplink'] as num).toInt(),
      downlink: (json['downlink'] as num).toInt(),
      uplinkTotal: (json['uplink-total'] as num).toInt(),
      downlinkTotal: (json['downlink-total'] as num).toInt(),
      memory: (json['memory'] as num).toInt(),
      goroutines: (json['goroutines'] as num).toInt(),
    );

Map<String, dynamic> _$$SingboxStatsImplToJson(_$SingboxStatsImpl instance) =>
    <String, dynamic>{
      'connections-in': instance.connectionsIn,
      'connections-out': instance.connectionsOut,
      'uplink': instance.uplink,
      'downlink': instance.downlink,
      'uplink-total': instance.uplinkTotal,
      'downlink-total': instance.downlinkTotal,
      'memory': instance.memory,
      'goroutines': instance.goroutines,
    };
