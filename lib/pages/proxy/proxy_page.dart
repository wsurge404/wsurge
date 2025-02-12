
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/proxy/model/proxy_entity.dart';
import 'package:wsurge/core/proxy/notifier/proxies_overview_notifier.dart';
import 'package:wsurge/pages/proxy/group_tile.dart';

import '../../core/titlebar/titlebar.dart';

class ProxyPage extends HookConsumerWidget with AppLogger {
  static String name = "proxy";

  const ProxyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProxies = ref.watch(proxiesOverviewNotifierProvider);
    var translate = ref.watch(translationsProvider);
    return Scaffold(
      appBar: PageWindowTitleBar(
        title: Text(translate.proxies.pageTitle),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: proxyList(asyncProxies),
    );
  }

  proxyList(AsyncValue<List<ProxyGroupEntity>> asyncProxies) {
    switch (asyncProxies) {
      case AsyncData(value: final groups):
        return ListView.builder(
            itemBuilder: (ctx, index) {
              return ProxyGroupTile(
                  title: Text(groups[index].name), group: groups[index]);
            },
            itemCount: groups.length);
      case AsyncError(:final error):
        loggy.error("proxy err:$error");
        return ListView();
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
    }
  }
}
