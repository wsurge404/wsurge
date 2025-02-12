import 'dart:math';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/profiles/model/profile_entity.dart';
import 'package:wsurge/core/profiles/notifier/active_profile_notifier.dart';
import 'package:wsurge/core/titlebar/titlebar.dart';
import 'package:wsurge/pages/profiles/notifier/profiles_overview_notifier.dart';
import 'package:wsurge/pages/profiles/profile_tile.dart';

class ProfilePage extends HookConsumerWidget {
  static String name = "profiles";

  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProfiles = ref.watch(profilesOverviewNotifierProvider);
    final anyProfile = ref.watch(hasAnyProfileProvider);
    return Scaffold(
      appBar: PageWindowTitleBar(
        title: Text("profiles"),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: _body(anyProfile, asyncProfiles),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            context.goNamed("addProfile");
          },
          child: Icon(FluentIcons.add_48_regular)),
    );
  }

  Widget _body(AsyncValue<bool> anyProfile,
      AsyncValue<List<ProfileEntity>> asyncProfiles) {
    return switch (anyProfile) {
      AsyncData(value: false) => const SizedBox(),
      _ => hasContent(asyncProfiles),
    };
  }

  Widget hasContent(AsyncValue<List<ProfileEntity>> asyncProfiles) {
    return switch (asyncProfiles) {
      AsyncData(value: final profiles) => LayoutBuilder(
          builder: (context, constraints) {
            final crossAxisCount = (constraints.maxWidth / 368).floor();
            final itemHeight = 100;
            final rowCount = (profiles.length / crossAxisCount).ceil();
            return SizedBox(
              height: max(rowCount * itemHeight + (rowCount - 1) * 10, 100),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (constraints.maxWidth / 368).floor(),
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 10,
                  mainAxisExtent: 100,
                ),
                itemCount: profiles.length,
                itemBuilder: (context, index) {
                  return ProfileTile(
                    profile: profiles[index],
                    isMain: false
                  );
                },
              ),
            );
          },
        ),
      AsyncError(:final error) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // if (icon != null) ...[
            //   Icon(icon),
            //   const Gap(16),
            // ],
            Text(error.toString()),
          ],
        ),
      AsyncLoading() => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularProgressIndicator()],
        ),
      _ => const SizedBox(),
    };
  }
// Widget profileBody(AsyncValue<List<ProfileEntity>> profiles) {
//   return switch (profiles) {
//     AsyncData(value: final profiles) =>
//         LayoutBuilder(
//           builder: (context, constraints) {
//             final crossAxisCount = (constraints.maxWidth / 268).floor();
//             // final itemWidth =
//             //     (constraints.maxWidth - (crossAxisCount - 1) * 10) /
//             //         crossAxisCount;
//             final itemHeight = 68;
//             final rowCount = (profiles.length / crossAxisCount).ceil();
//             return SizedBox(
//               height: rowCount * itemHeight + (rowCount - 1) * 10,
//               child: GridView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: (constraints.maxWidth / 268).floor(),
//                   crossAxisSpacing: 10,
//                   mainAxisSpacing: 10,
//                   mainAxisExtent: 68,
//                 ),
//                 itemCount: profiles.length,
//                 itemBuilder: (context, index) {
//                   final proxy = profiles[index];
//                   return ProfileTile(profile: proxy,isMain: false,);
//                 },
//               ),
//             );
//           },
//         ),
//     AsyncError(:final error) =>
//         SliverErrorBodyPlaceholder(
//           error.toString(),
//         ),
//     AsyncLoading() => const SliverLoadingBodyPlaceholder(),
//     _ => const SizedBox(),
//   };
// }
}
