import 'package:flutter/material.dart';

// bool showDrawerButton(BuildContext context) {
//   if (!useMobileRouter) return true;
//   final String location = GoRouterState.of(context).uri.path;
//   if (location == const HomeRoute().location || location == const ProfilesOverviewRoute().location) return true;
//   if (location.startsWith(const ProxiesRoute().location)) return true;
//   return false;
// }

class NestedAppBar extends StatelessWidget {
  const NestedAppBar({
    super.key,
    this.title,
    this.actions,
    this.pinned = true,
    this.forceElevated = false,
    this.bottom,
  });

  final Widget? title;
  final List<Widget>? actions;
  final bool pinned;
  final bool forceElevated;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    // RootScaffold.canShowDrawer(context);

    return SliverAppBar(
      // leading: (RootScaffold.stateKey.currentState?.hasDrawer ?? false) && showDrawerButton(context)
      //     ? DrawerButton(
      //         onPressed: () {
      //         },
      //       )
      //     : IconButton(
      //         icon: Icon( Icons.arrow_forward),
      //         padding: EdgeInsets.only(right: 0),
      //         onPressed: () {
      //           Navigator.of(context).pop(); // Pops the current route off the navigator stack
      //         },
      //       ),
      title: title,
      actions: actions,
      pinned: pinned,
      forceElevated: forceElevated,
      bottom: bottom,
    );
  }
}
