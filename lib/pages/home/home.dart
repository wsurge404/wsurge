
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/connection/model/connection_status.dart';
import 'package:wsurge/core/connection/notifier/connection_notifier.dart';
import 'package:wsurge/core/localization/translations.dart';
import 'package:wsurge/core/profiles/notifier/active_profile_notifier.dart';
import 'package:wsurge/core/titlebar/titlebar.dart';
import 'package:wsurge/gen/translations.g.dart';
import 'package:wsurge/pages/home/home_body_section.dart';
import 'package:wsurge/pages/home/home_stat_section.dart';

class HomePage extends HookConsumerWidget {
  static const String name = "home";

  HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var cp = ref.read(connectionNotifierProvider.notifier);
    var translate = ref.read(translationsProvider);
    var stat = ref.watch(connectionNotifierProvider);
    final hasAnyProfile = ref.watch(hasAnyProfileProvider);

    return Scaffold(
        appBar: PageWindowTitleBar(
          title: Text(translate.home.pageTitle),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () async {
              switch(hasAnyProfile){
                case AsyncValue(value: false):
                  GoRouter.of(context).goNamed("profiles");
                  return;
                default:
                  if (stat case AsyncData(:final value)) {
                    switch (value) {
                      case Connected():
                        await cp.abortConnection();
                      default:
                        await cp.toggleConnection();
                    }
                  }
              }
            },
            tooltip: tips(stat,translate),
            child: buttons(stat)),
        body: CustomScrollView(slivers: [
          // SliverToBoxAdapter(
          //   child: HomeButtonSection(),
          // ),
          SliverToBoxAdapter(
            child: HomeStatSection(),
          ),
          SliverToBoxAdapter(
            child: HomeBodySection(),
          )
        ]));
  }

  String tips(AsyncValue<ConnectionStatus> stat,Translations translations) {
    if (stat case AsyncValue(:final value)) {
      if (value case Connected()) return translations.connection.tabToDisConnect;
      return translations.connection.tapToConnect;
    }
  }

  Widget buttons(AsyncValue<ConnectionStatus> stat) {
    if (stat case AsyncValue(:final value)) {
      if (value case Connected()) return Icon(FluentIcons.stop_24_filled);
      if(value case Connecting()) return CircularProgressIndicator();
      return Icon(FluentIcons.play_48_filled);
    }
  }
}
