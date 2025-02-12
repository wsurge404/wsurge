import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wsurge/core/logger/custom_loggers.dart';
import 'package:wsurge/core/profiles/model/profile_entity.dart';
import 'package:wsurge/pages/profiles/notifier/profiles_overview_notifier.dart';
import 'package:wsurge/pages/profiles/profile_tile.dart';
import 'package:wsurge/utils/async_mutation.dart';
import 'package:wsurge/utils/placeholders.dart';

class ProfileList extends HookConsumerWidget with AppLogger {
  final Widget title;
  final ValueChanged<String>? onChanged;
  final Map<String, String>? presets = new HashMap<String, String>();

  ProfileList({
    super.key,
    this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncProfiles =
    ref.watch(profilesOverviewNotifierProvider);
    presets!['222'] = '223213';
    final animation = useAnimationController(
      duration: const Duration(milliseconds: 300),
    );
    final selectActiveProxyMutation = useMutation(initialOnFailure: (error) {}
      // CustomToast.error(t.presentShortError(error)).show(context),
    );
    final labelStyle = Theme
        .of(context)
        .textTheme
        .labelSmall
        ?.copyWith(
      fontWeight: FontWeight.w500,
    );

    return LayoutBuilder(builder: (context, constrain) {
      return Card(
        child: ExpansionTile(
          title: DefaultTextStyle(
            style: Theme
                .of(context)
                .textTheme
                .titleSmall!,
            child: title,
          ),
          shape: const Border(),
          leading: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: (animation.value * 3.14) / 2,
                child: child,
              );
            },
            child: const Icon(Icons.chevron_right),
          ),
          // trailing: Padding(
          //     padding: const EdgeInsets.symmetric(vertical: 8.0),
          //     child: IconButton(
          //         onPressed: () async {
          //           // await notifier.urlTest(group.tag);
          //         },
          //         tooltip: "延迟测试",
          //         icon: Icon(FluentIcons.wifi_off_24_filled))),
          onExpansionChanged: (value) {
            if (value) {
              animation.forward();
            } else {
              animation.reverse();
            }
          },
          children: [
            profileBody(asyncProfiles)
          ],
        ),
      );
    });
  }

  Widget profileBody(AsyncValue<List<ProfileEntity>> profiles) {
    return switch (profiles) {
      AsyncData(value: final profiles) =>
          LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount = (constraints.maxWidth / 268).floor();
              // final itemWidth =
              //     (constraints.maxWidth - (crossAxisCount - 1) * 10) /
              //         crossAxisCount;
              final itemHeight = 68;
              final rowCount = (profiles.length / crossAxisCount).ceil();
              return SizedBox(
                height: rowCount * itemHeight + (rowCount - 1) * 10,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: (constraints.maxWidth / 268).floor(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 68,
                  ),
                  itemCount: profiles.length,
                  itemBuilder: (context, index) {
                    final proxy = profiles[index];
                    return ProfileTile(profile: proxy,isMain: false,);
                  },
                ),
              );
            },
          ),
      AsyncError(:final error) =>
          SliverErrorBodyPlaceholder(
            error.toString(),
          ),
      AsyncLoading() => const SliverLoadingBodyPlaceholder(),
      _ => const SizedBox(),
    };
  }
}
