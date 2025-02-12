// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestEntityImpl _$$RequestEntityImplFromJson(Map<String, dynamic> json) =>
    _$RequestEntityImpl(
      url: json['url'] as String,
      method: json['method'] as String,
      processPath: json['process-path'] as String?,
      packageName: json['package-name'] as String?,
      headers: json['headers'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$RequestEntityImplToJson(_$RequestEntityImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'method': instance.method,
      'process-path': instance.processPath,
      'package-name': instance.packageName,
      'headers': instance.headers,
    };
