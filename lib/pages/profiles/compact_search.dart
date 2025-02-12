import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class CompactSearch extends HookWidget {
  final ValueChanged<String>? onChanged;
  final String placeholder;
  final IconData icon;
  final Color? iconColor;

  const CompactSearch({
    super.key,
    this.onChanged,
    this.placeholder = "Search...",
    this.icon = FluentIcons.search_28_filled,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(10),
      width: 300,
      child: TextField(
        autofocus: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: placeholder,
          isDense: true,
          // prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
