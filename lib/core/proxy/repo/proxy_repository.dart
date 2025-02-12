import 'package:fpdart/fpdart.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/proxy/model/proxy_entity.dart';
import 'package:wsurge/core/proxy/model/proxy_failure.dart';
import 'package:wsurge/singbox/singbox.dart';
import 'package:wsurge/utils/exception_handler.dart';

abstract interface class ProxyRepository {
  Stream<Either<ProxyFailure, List<ProxyGroupEntity>>> watchProxies();
  Stream<Either<ProxyFailure, List<ProxyGroupEntity>>> watchActiveProxies();
  // TaskEither<ProxyFailure, IpInfo> getCurrentIpInfo(CancelToken cancelToken);
  TaskEither<ProxyFailure, Unit> selectProxy(
    String groupTag,
    String outboundTag,
  );
  TaskEither<ProxyFailure, Unit> urlTest(String groupTag);
}

class ProxyRepositoryImpl with ExceptionHandler, InfraLogger implements ProxyRepository {
  ProxyRepositoryImpl({
    required this.singbox,
    // required this.client,
  });

  final SingboxService singbox;
  // final DioHttpClient? client;

  @override
  Stream<Either<ProxyFailure, List<ProxyGroupEntity>>> watchProxies() {
    return singbox.watchGroups().map((event) {
      final groupWithSelected = {
        for (final group in event) group.tag: group.selected,
      };
      return event
          .map(
            (e) => ProxyGroupEntity(
              tag: e.tag,
              type: e.type,
              selected: e.selected,
              items: e.items
                  .map(
                    (e) => ProxyItemEntity(
                      tag: e.tag,
                      type: e.type,
                      urlTestDelay: e.urlTestDelay,
                      selectedTag: groupWithSelected[e.tag],
                    ),
                  )
                  .filter((t) => t.isVisible)
                  .toList(),
            ),
          )
          .toList();
    }).handleExceptions(
      (error, stackTrace) {
        loggy.error("error watching proxies", error, stackTrace);
        return ProxyUnexpectedFailure(error, stackTrace);
      },
    );
  }

  @override
  Stream<Either<ProxyFailure, List<ProxyGroupEntity>>> watchActiveProxies() {
    return singbox.watchActiveGroups().map((event) {
      final groupWithSelected = {
        for (final group in event) group.tag: group.selected,
      };
      return event
          .map(
            (e) => ProxyGroupEntity(
              tag: e.tag,
              type: e.type,
              selected: e.selected,
              items: e.items
                  .map(
                    (e) => ProxyItemEntity(
                      tag: e.tag,
                      type: e.type,
                      urlTestDelay: e.urlTestDelay,
                      selectedTag: groupWithSelected[e.tag],
                    ),
                  )
                  .toList(),
            ),
          )
          .toList();
    }).handleExceptions(
      (error, stackTrace) {
        loggy.error("error watching active proxies", error, stackTrace);
        return ProxyUnexpectedFailure(error, stackTrace);
      },
    );
  }

  @override
  TaskEither<ProxyFailure, Unit> selectProxy(
    String groupTag,
    String outboundTag,
  ) {
    return exceptionHandler(
      () => singbox.selectOutbound(groupTag, outboundTag).mapLeft(ProxyUnexpectedFailure.new).run(),
      ProxyUnexpectedFailure.new,
    );
  }

  @override
  TaskEither<ProxyFailure, Unit> urlTest(String groupTag_) {
    // var groupTag = groupTag_;
    // loggy.debug("testing group: [$groupTag]");
    // if (!["auto"].contains(groupTag)) {
    //   loggy.warning("only auto proxy group can do url test. Please change go code if you want");
    // }
    // groupTag = "auto";

    return exceptionHandler(
      () => singbox.urlTest(groupTag_).map((it){
        return it;
      }).mapLeft(ProxyUnexpectedFailure.new).run(),
      ProxyUnexpectedFailure.new,
    );
  }

  // @override
  // TaskEither<dynamic, dynamic> getCurrentIpInfo(CancelToken cancelToken) {
  //   // TODO: implement getCurrentIpInfo
  //   throw UnimplementedError();
  // }
  
}
