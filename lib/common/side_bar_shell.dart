import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sidebarx/sidebarx.dart';
import 'package:window_manager/window_manager.dart';
import 'package:wsurge/common/side_bar_utils.dart';
import 'package:wsurge/core/connection/model/connection_status.dart';
import 'package:wsurge/core/connection/notifier/connection_notifier.dart';
import 'package:wsurge/core/window/widget/window_wrapper.dart';
import 'package:wsurge/gen/assets.gen.dart';
import 'package:wsurge/pages/home/app_label.dart';

class SideBarShell extends StatelessWidget {
  final Widget child;

  SideBarShell({super.key, required this.child});

  final SidebarXController controller =
      SidebarXController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: RootScaffold.stateKey,
      body: Row(
        children: [SideBar(controller: controller), Expanded(child: child)],
      ),
    );
  }
}

T useBrightnessValue<T>(
  T lightValue,
  T darkValue,
) {
  final context = useContext();

  return Theme.of(context).brightness == Brightness.light
      ? lightValue
      : darkValue;
}

int findIndex(String name) {
  return tiles.indexWhere((it) {
    return it.name == name;
  });
}

class SideBar extends HookConsumerWidget {
  final SidebarXController controller;

  const SideBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final bg = theme.colorScheme.surfaceContainerHighest;
    final bgColor = useBrightnessValue(
      Color.lerp(bg, Colors.white, 0.6),
      Color.lerp(bg, Colors.black, 0.45)!,
    );
    final routerState = GoRouterState.of(context);
    final selectedIndex = tiles.indexWhere(
      (e) => routerState.namedLocation(e.name) == routerState.matchedLocation,
    );
    if (controller.selectedIndex != selectedIndex) {
      controller.selectIndex(selectedIndex);
    }
    var status = ref.watch(connectionNotifierProvider).value ??
        ConnectionStatus.disconnected();
    return SidebarX(
        controller: controller,
        showToggleButton: false,
        headerBuilder: (_, __) => const SidebarHeader(),
        theme: SidebarXTheme(
          width: 50,
          margin: EdgeInsets.only(bottom: 10, top: 5),
          selectedItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.colorScheme.primary.withOpacity(0.1),
          ),
          selectedIconTheme: IconThemeData(
            color: theme.colorScheme.primary,
          ),
        ),
        extendedTheme: SidebarXTheme(
          width: 250,
          margin: EdgeInsets.only(
            bottom: 10,
            left: 0,
            top: 5,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            color: bgColor?.withOpacity(0.8),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
          selectedItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: theme.colorScheme.primary.withOpacity(0.1),
          ),
          selectedIconTheme: IconThemeData(
            color: theme.colorScheme.primary,
          ),
          selectedTextStyle: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.w600,
          ),
          itemTextPadding: const EdgeInsets.only(left: 10),
          selectedItemTextPadding: const EdgeInsets.only(left: 10),
          hoverTextStyle: theme.textTheme.bodyMedium?.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        footerBuilder: (ctx, extend) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: status == ConnectionStatus.connected()
                              ? Colors.green
                              : Colors.red,
                          borderRadius: BorderRadius.circular(15 / 2),
                          boxShadow: theme.brightness == Brightness.light
                              ? null
                              : kElevationToShadow[8],
                        )),
                    const SizedBox(width: 10),
                    Text(
                      status.format(),
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        items: tiles.map((it) {
          return SidebarXItem(
              label: it.title,
              icon: it.icon,
              onTap: () {
                context.goNamed(it.name);
              });
        }).toList());
  }
}

class SidebarHeader extends HookWidget {
  const SidebarHeader({super.key});
  static Widget brandLogo() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Assets.images.logo.image(height: 50),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final theme = Theme.of(context);

    // if (mediaQuery.mdAndDown) {
    //   return Container(
    //     height: 40,
    //     width: 40,
    //     margin: const EdgeInsets.only(bottom: 5),
    //     child: Sidebar.brandLogo(),
    //   );
    // }

    return DragToMoveArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                brandLogo(),
                const SizedBox(width: 10),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "Wsurge"),
                      const TextSpan(text: " "),
                      const WidgetSpan(
                        child: AppVersionLabel(),
                        alignment: PlaceholderAlignment.middle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
