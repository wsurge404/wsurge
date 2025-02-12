import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:wsurge/core/titlebar/titlebar.dart';
import 'package:wsurge/pages/decrypt/rules/rule_add_section.dart';
import 'package:wsurge/pages/decrypt/rules/rule_table_body_section.dart';
import 'package:wsurge/pages/decrypt/rules/rule_table_header_section.dart';

class RulePage extends HookConsumerWidget {
  static String name = "rules";

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: PageWindowTitleBar(
          title: Text("Rules"),
          leading: BackButton(),
          centerTitle: true,
          automaticallyImplyLeading: true,
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: MultiSliver(
                  children: [
                    RuleAddSection(),
                    RuleTableHeaderSection(),
                  ],
                ),
              ),
            ];
          },
          body: RuleTableBodySection(),
        ));
  }
}
