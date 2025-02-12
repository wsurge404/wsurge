import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wsurge/common/base_page_route.dart';
import 'package:wsurge/common/side_bar_shell.dart';
import 'package:wsurge/pages/decrypt/decrypt_page.dart';
import 'package:wsurge/pages/decrypt/domain/domains_page.dart';
import 'package:wsurge/pages/decrypt/rules/rule_page.dart';
import 'package:wsurge/pages/profiles/detail/profile_details_page.dart';
import 'package:wsurge/pages/profiles/profile_page.dart';
import 'package:wsurge/pages/proxy/proxy_page.dart';
import 'package:wsurge/pages/requests/request_page.dart';
import 'package:wsurge/pages/settings/settings.dart';

import '../pages/home/home.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellRouteNavigatorKey = GlobalKey<NavigatorState>();

var routerProvider = Provider((ref) {
  return GoRouter(navigatorKey: rootNavigatorKey, routes: [
    ShellRoute(
        navigatorKey: shellRouteNavigatorKey,
        builder: (ctx, state, child) => SideBarShell(child: child),
        routes: [
          GoRoute(
              path: "/",
              name: HomePage.name,
              pageBuilder: (ctx, status) => BasePage(child: HomePage())),
          GoRoute(
            path: "/decrypt",
            name: DecryptPage.name,
            pageBuilder: (ctx, status) => const BasePage(child: DecryptPage()),
            routes: [
              GoRoute(
                path: "domain",
                name: DomainsPage.name,
                pageBuilder: (context, state) => BaseSlidePage(
                  child: DomainsPage(),
                ),
              ),
              GoRoute(
                path: "rules",
                name: RulePage.name,
                pageBuilder: (context, state) => BaseSlidePage(
                  child: RulePage(),
                ),
                // routes: [
                //   GoRoute(
                //     path: "ruleItems",
                //     name: RuleItemPage.name,
                //     pageBuilder: (context, state) => SpotubeSlidePage(
                //       child: RuleItemPage("new"),
                //     ),
                //   ),
                // ]
              ),
            ],
          ),
          GoRoute(
            path: "/proxy",
            name: ProxyPage.name,
            pageBuilder: (context, state) => BaseSlidePage(
              child: ProxyPage(),
            ),
            // redirect: (context, state) async {
            //   return "/test";
            // },
          ),
          GoRoute(
              path: "/profiles",
              name: ProfilePage.name,
              pageBuilder: (ctx, status) =>
                  const BasePage(child: ProfilePage()),
              routes: [
                GoRoute(
                  path: "add",
                  name: "addProfile",
                  pageBuilder: (context, state) => BaseSlidePage(
                    child: ProfileDetailsPage("new"),
                  ),
                ),
                GoRoute(
                  path: "/:id",
                  name: "updateProfile",
                  pageBuilder: (context, state) {
                    var id = state.pathParameters["id"];
                    return BaseSlidePage(
                      child: ProfileDetailsPage(id!),
                    );
                  },
                ),
              ]),
          GoRoute(
              path: "/requests",
              name: RequestPage.name,
              pageBuilder: (ctx, status) =>
                  const BasePage(child: RequestPage())),
          GoRoute(
              path: "/settings",
              name: Settings.name,
              pageBuilder: (ctx, status) => const BasePage(child: Settings()))
        ])
  ]);
});

class ProfileDetailsRoute extends GoRouteData {
  const ProfileDetailsRoute(this.id);

  final String id;
  static const name = "Profile Details";

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage(
      fullscreenDialog: true,
      name: name,
      child: ProfileDetailsPage(id),
    );
  }
}
