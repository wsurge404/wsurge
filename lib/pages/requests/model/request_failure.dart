import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wsurge/core/model/failures.dart';
part 'request_failure.freezed.dart';
@freezed
sealed class RequestFailure with _$RequestFailure {
  const RequestFailure._();

  @With<UnexpectedFailure>()
  const factory RequestFailure.unexpected([
    Object? error,
    StackTrace? stackTrace,
  ]) = RequestUnexpectedFailure;
}
