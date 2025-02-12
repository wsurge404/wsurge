import 'package:fpdart/fpdart.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/pages/requests/model/request_entity.dart';
import 'package:wsurge/pages/requests/model/request_failure.dart';

import 'package:wsurge/singbox/singbox.dart';
import 'package:wsurge/utils/exception_handler.dart';

abstract interface class RequestRepository {

  Stream<Either<RequestFailure,RequestEntity>> watchRequest();
}
class RequestRepositoryImpl
    with ExceptionHandler, InfraLogger
    implements RequestRepository {
  RequestRepositoryImpl({
    required this.singbox,
  });

  final SingboxService singbox;


  @override
  Stream<Either<RequestFailure, RequestEntity>> watchRequest() {
    return singbox
        .watchRequests()
        .handleExceptions(
          (error, stackTrace) {
        loggy.warning("error watching logs", error, stackTrace);
        return RequestFailure.unexpected(error, stackTrace);
      },
    );
  }
}