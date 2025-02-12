import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/model/failures.dart';
import 'package:wsurge/pages/requests/model/request_entity.dart';
import 'package:wsurge/pages/requests/notifier/request_overview_notifier.dart';
import 'package:wsurge/pages/requests/transition.dart';
import 'package:wsurge/pages/requests/widget/network_card_request_card.dart';
import 'package:wsurge/utils/placeholders.dart';

class RequestSection extends HookConsumerWidget with AppLogger {
  final GlobalKey<ColorTransitionState> transitionState = GlobalKey<
      ColorTransitionState>();
  final Map<String, List<RequestEntity>> requestMap = {};

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var view = ref.watch(requestOverviewNotifierProvider);
    final t = ref.watch(translationsProvider);
   return CustomScrollView(
     slivers: [
       switch (view.requests) {
         AsyncData(value: final requests) => SliverList.builder(
           itemCount: requests.length,
           itemBuilder: (context, index) {
             var a =  requests[index].copyWith(packageName: "$index");
             return NetworkRequestCard(indicatorColor: Colors.blue, requestEntity: a);
           },
         ),
         AsyncError(:final error) => SliverErrorBodyPlaceholder(
           t.presentShortError(error),
         ),
         _ =>  const SliverFillRemaining(
           hasScrollBody: false,
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [SizedBox()],
           ),
         ),
       },
     ],
   );
  }

  String remoteDomain(String url) {
    try {
      var uri = Uri.parse(url);
      return '${uri.scheme}://${uri.host}${uri.hasPort ? ':${uri.port}' : ''}';
    } catch (e) {
      return "";
    }
  }

  // proxyList(AsyncValue<List<RequestEntity>> asyncProxies) {
  //   // return Column(
  //   //   mainAxisAlignment: MainAxisAlignment.center,
  //   //   children:  List.generate(50, (i){
  //   //      return  ;
  //   //     }),
  //   // );
  //     switch (asyncProxies) {
  //       case AsyncData(value: final requests):
  //         return CustomScrollView(
  //           slivers: [],
  //         );
  //     case AsyncError(:final error):
  //       loggy.error("proxy err:$error");
  //       return Text("proxy err:$error");
  //     case AsyncLoading():
  //       return Text("loading");
  //   }
  // }
}
