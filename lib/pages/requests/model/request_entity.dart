import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_entity.freezed.dart';
part 'request_entity.g.dart';
@freezed
class RequestEntity with _$RequestEntity {
  @JsonSerializable(fieldRename: FieldRename.kebab)
  const factory RequestEntity(
      {required String url,
      required String method,String? processPath,String? packageName, Map<String, dynamic>? headers}) = _RequestEntity;
  factory RequestEntity.fromJson(Map<String, dynamic> json) => _$RequestEntityFromJson(json);
}
