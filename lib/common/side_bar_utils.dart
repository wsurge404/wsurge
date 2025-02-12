import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:wsurge/pages/decrypt/decrypt_page.dart';
import 'package:wsurge/pages/home/home.dart';
import 'package:wsurge/pages/profiles/profile_page.dart';
import 'package:wsurge/pages/proxy/proxy_page.dart';
import 'package:wsurge/pages/requests/request_page.dart';
import 'package:wsurge/pages/settings/settings.dart';

class SideBarTiles {
  final IconData icon;
  final String title;
  final String id;
  final String name;

  SideBarTiles({
    required this.icon,
    required this.title,
    required this.id,
    required this.name,
  });
}

List<SideBarTiles> tiles = [
  SideBarTiles(
      icon: FluentIcons.home_48_filled, title: "首页", id: HomePage.name, name: HomePage.name),
  SideBarTiles(
      icon: FluentIcons.shield_lock_20_filled,
      title: "Mitm配置",
      id: DecryptPage.name,
      name: DecryptPage.name),
  SideBarTiles(
      icon: FluentIcons.document_header_footer_24_filled,
      title: "节点",
      id: ProxyPage.name,
      name: ProxyPage.name),
  SideBarTiles(
      icon: FluentIcons.document_multiple_24_filled,
      title: "配置",
      id: ProfilePage.name,
      name: ProfilePage.name),
  SideBarTiles(
      icon: Icons.stacked_bar_chart,
      title: "请求",
      id: RequestPage.name,
      name: RequestPage.name),
  SideBarTiles(
      icon: FluentIcons.settings_28_filled,
      title: "设置",
      id: Settings.name,
      name: Settings.name),
];
