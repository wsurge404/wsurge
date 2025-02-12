import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wsurge/core/model/failures.dart';
import 'package:wsurge/gen/translations.g.dart';

part 'mitm_failure.freezed.dart';

@freezed
sealed class MitmFailure with _$MitmFailure, Failure {
  const MitmFailure._();

  @With<UnexpectedFailure>()
  const factory MitmFailure.unexpected([
    Object? error,
    StackTrace? stackTrace,
  ]) = MitmUnexpectedFailure;

  const factory MitmFailure.notFound() = MitmNotFoundFailure;

  @With<ExpectedFailure>()
  const factory MitmFailure.invalidUrl() = MitmInvalidUrlFailure;

  @override
  ({String type, String? message}) present(TranslationsEn t) {
    return switch (this) {
      MitmUnexpectedFailure() => (
          type: t.failure.profiles.unexpected,
          message: null,
        ),
      MitmNotFoundFailure() => (
          type: t.failure.profiles.notFound,
          message: null
        ),
      MitmInvalidUrlFailure() => (
          type: t.failure.profiles.invalidUrl,
          message: null,
        ),
    };
  }
}
